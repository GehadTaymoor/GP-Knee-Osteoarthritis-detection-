import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:knee_osteoarthritis/colors.dart';
import 'package:knee_osteoarthritis/widgets/UpperMenuHome.dart';
import 'dart:io';
import 'package:tflite_v2/tflite_v2.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class SubmitPage extends StatefulWidget {
  final Function() toggleLanguage;

  const SubmitPage({super.key, required this.toggleLanguage});

  @override
  State<SubmitPage> createState() => _SubmitPageState();
}

class _SubmitPageState extends State<SubmitPage> {
  File? _image;
  List? _output;

  // var _recognitions;
  // var v = "";

  @override
  void initState() {
    super.initState();
    loadModel().then((value) {
      setState(() {});
    });
  }

  loadModel() async {
    await Tflite.loadModel(
      model: 'assets/original.tflite',
      labels: 'assets/labels.txt',
    );
  }

  Future PickImage() async {
    var image = await ImagePicker().pickImage(source: ImageSource.gallery);
    if (image == null) return;
    setState(() {
      _image = File(image.path);
      _output=null;
    });
  }

  classifyImage(File image) async {
    var output = await Tflite.runModelOnImage(
      path: image.path,
      numResults: 2,
      threshold: 0.5,
      imageMean: 127.5,
      imageStd: 127.5,
    );
    setState(() {
      _output = output;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appBarColor,
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.only(
          top: MediaQuery.of(context).size.height * 0.02,
          bottom: MediaQuery.of(context).size.height * 0.02,
          right: MediaQuery.of(context).size.width * 0.037,
          left: MediaQuery.of(context).size.width * 0.051,
        ),
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Colors.white,
              boxShadow: [
                BoxShadow(color: Colors.black26.withOpacity(1), blurRadius: 5)
              ]),
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height * 0.91,
          child: Column(
            children: [
              UpperMenuHome(toggleLanguage: widget.toggleLanguage),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.038,
              ),
              Text(
                AppLocalizations.of(context)!.uploadXray,
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: MediaQuery.of(context).size.width * 0.064,
                    fontFamily: 'Inter'),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.076,
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.5,
                width: MediaQuery.of(context).size.width * 0.84,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(36),
                    border: Border.all(
                        color: Colors.black, style: BorderStyle.solid)),
                child: _image != null
                    ? Image.file(_image!)
                    : Center(
                        child: Text(AppLocalizations.of(context)!.noImage,
                            style: TextStyle(
                                color: Colors.black,
                                fontFamily: 'Inter',
                                fontSize:
                                    MediaQuery.of(context).size.width * 0.059,
                                fontWeight: FontWeight.bold)),
                      ),
              ),
              SizedBox(height: MediaQuery.of(context).size.width * 0.05),
              _output == null
                  ? const Text('')
                  : Text(
                      '${_output![0]['label']}',
                      style: TextStyle(
                          fontSize: MediaQuery.of(context).size.width * 0.058,
                          fontWeight: FontWeight.bold),
                    ),
              SizedBox(height: MediaQuery.of(context).size.width * 0.05),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.39,
                      height: MediaQuery.of(context).size.height * 0.048,
                      child: ElevatedButton(
                        onPressed: () {
                          PickImage();
                        },
                        style: ElevatedButton.styleFrom(
                            backgroundColor: appBarColor),
                        child: Text(AppLocalizations.of(context)!.upload,
                            style: TextStyle(
                                fontSize:
                                    MediaQuery.of(context).size.width * 0.048,
                                fontWeight: FontWeight.bold,
                                color: Colors.white)),
                      ),
                    ),
                    SizedBox(width: MediaQuery.of(context).size.width * 0.05),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.39,
                      height: MediaQuery.of(context).size.height * 0.048,
                      child: ElevatedButton(
                        onPressed: () {
                          setState(() {
                            classifyImage(_image!);
                          });
                        },
                        style: ElevatedButton.styleFrom(
                            backgroundColor: appBarColor),
                        child: Text(AppLocalizations.of(context)!.submit,
                            style: TextStyle(
                                fontSize:
                                    MediaQuery.of(context).size.width * 0.048,
                                fontWeight: FontWeight.bold,
                                color: Colors.white)),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      )),
    );
  }
}
