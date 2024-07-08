import 'package:flutter/material.dart';
import 'package:knee_osteoarthritis/colors.dart';
import 'package:knee_osteoarthritis/widgets/DetectionContainer.dart';
import 'package:knee_osteoarthritis/widgets/UpperMenuHome.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';


class HomePage extends StatefulWidget {
  final Function() toggleLanguage;

  const HomePage({super.key, required this.toggleLanguage});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
          height: MediaQuery.of(context).size.height*0.91,
          child: Column(
            children: [
              UpperMenuHome(toggleLanguage: widget.toggleLanguage),
               SizedBox(
                height: MediaQuery.of(context).size.height*0.038,
              ),
              Text(
                AppLocalizations.of(context)!.welcome,
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: MediaQuery.of(context).size.width*0.048,
                    fontFamily: 'Inter'),
              ),
              Padding(
                padding: const EdgeInsets.all(17),
                child: Column(
                  children: [
                    DetectionContainer(toggleLanguage:widget.toggleLanguage),
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
