import 'package:flutter/material.dart';
import 'package:knee_osteoarthritis/colors.dart';
import 'package:knee_osteoarthritis/screens/SignInPage.dart';
import 'package:knee_osteoarthritis/widgets/BottomMenu.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:knee_osteoarthritis/widgets/UpperMenuHome.dart';

class LandingPage extends StatelessWidget {
  final Function() toggleLanguage;

  const LandingPage({super.key, required this.toggleLanguage});

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
                  BoxShadow(color: Colors.black.withOpacity(1), blurRadius: 5)
                ]),
            // size of the biggest container
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 0.91,
            child: Column(
              children: [
                UpperMenuHome(toggleLanguage: toggleLanguage),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.039,
                ),
                Container(
                    height: MediaQuery.of(context).size.height * 0.322,
                    width: MediaQuery.of(context).size.width * 0.65,
                    child: Image(image: AssetImage('assets/images/Knee.png'))),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.05,
                ),
                Text(
                  AppLocalizations.of(context)!.kneeOsteoarthritis,
                  style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: MediaQuery.of(context).size.width * 0.069,
                      color: Colors.black,
                      fontFamily: 'Inter'),
                ),
                Text(
                  ' ',
                  style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: MediaQuery.of(context).size.width * 0.069,
                      color: Colors.black,
                      fontFamily: 'Inter'),
                ),
                Text(AppLocalizations.of(context)!.detectTheSeverityOf,
                    style: TextStyle(
                        color: Color(0xff4F4F4F),
                        fontSize: MediaQuery.of(context).size.width * 0.055)),
                Text(AppLocalizations.of(context)!.kneeOsteoarthritis,
                    style: TextStyle(
                        color: Color(0xff4F4F4F),
                        fontSize: MediaQuery.of(context).size.width * 0.055)),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.0286,
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pushAndRemoveUntil(
                        MaterialPageRoute(
                            builder: (_) =>
                                SignInPage(toggleLanguage: toggleLanguage)),
                        (route) => false);
                  },
                  child: Text(
                    AppLocalizations.of(context)!.getStarted,
                    style: TextStyle(color: Colors.white),
                  ),
                  style: ElevatedButton.styleFrom(backgroundColor: appBarColor),
                ),
                Spacer(),
                BottomMenu()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
