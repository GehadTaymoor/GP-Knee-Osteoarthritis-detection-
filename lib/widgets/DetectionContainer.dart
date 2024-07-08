import 'package:flutter/material.dart';
import 'package:knee_osteoarthritis/colors.dart';
import '../screens/SubmitPage.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class DetectionContainer extends StatelessWidget {
  final Function() toggleLanguage;

  const DetectionContainer({super.key, required this.toggleLanguage});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.64,
      width: MediaQuery.of(context).size.width * 0.91,
      decoration: BoxDecoration(
          color: Color(0xffD9D9D9), borderRadius: BorderRadius.circular(50)),
      child: Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.011,
          ),
          Text(
            AppLocalizations.of(context)!.kneeOsteoarthritis,
            style: TextStyle(
                color: Colors.black,
                fontFamily: 'Inter',
                fontSize: MediaQuery.of(context).size.width * 0.064,
                fontWeight: FontWeight.bold),
          ),
          Text(
            AppLocalizations.of(context)!.detection,
            style: TextStyle(
                color: Colors.black,
                fontFamily: 'Inter',
                fontSize: MediaQuery.of(context).size.width * 0.064,
                fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.014,
          ),
          Container(
            height: MediaQuery.of(context).size.height * 0.174,
            width: MediaQuery.of(context).size.width * 0.45,
            child: Image(image: AssetImage('assets/images/knee2.png')),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.015,
          ),
          Container(
              height: MediaQuery.of(context).size.height * 0.222,
              width: MediaQuery.of(context).size.width * 0.811,
              child: Padding(
                padding: const EdgeInsets.all(18),
                child: Text(
                  AppLocalizations.of(context)!.goThereAnd,
                  style: TextStyle(
                      fontWeight: FontWeight.normal,
                      fontSize: MediaQuery.of(context).size.width * 0.053,
                      fontFamily: 'Inter',
                      color: Colors.black),
                ),
              )),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.011,
          ),
          Container(
              height: MediaQuery.of(context).size.height * 0.095,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  borderRadius: BorderRadiusDirectional.only(
                    bottomEnd: Radius.circular(40),
                    bottomStart: Radius.circular(40),
                  ),
                  gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [appBarColor, Colors.white])),
              child: Stack(
                alignment: Alignment.center,
                children: [
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.050,
                    width: MediaQuery.of(context).size.width * 0.43,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (_) => SubmitPage(toggleLanguage: toggleLanguage,)));
                      },
                      child: Text(AppLocalizations.of(context)!.goThere,
                          style: TextStyle(
                              fontSize:
                                  MediaQuery.of(context).size.width * 0.045,
                              fontWeight: FontWeight.bold,
                              color: Colors.white)),
                      style: ElevatedButton.styleFrom(
                          backgroundColor: appBarColor),
                    ),
                  )
                ],
              )),
        ],
      ),
    );
  }
}
