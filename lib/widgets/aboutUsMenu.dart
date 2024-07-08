import 'package:flutter/material.dart';
import 'package:knee_osteoarthritis/colors.dart';
import 'package:knee_osteoarthritis/widgets/scale_route.dart';
import '../screens/AboutUsPage.dart';
import '../screens/ContactUsPage.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class AboutUsMenu extends StatefulWidget {
  final Function() toggleLanguage;

  const AboutUsMenu({super.key, required this.toggleLanguage});

  @override
  State<AboutUsMenu> createState() => _AboutUsMenuState();
}

class _AboutUsMenuState extends State<AboutUsMenu> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 50,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          gradient: LinearGradient(colors: [
            azureBlue,
            Colors.white,
          ])),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text(
            AppLocalizations.of(context)!.kneeOsteoarthritis,
            style: TextStyle(
                color: Colors.black,
                fontSize: MediaQuery.of(context).size.width * 0.028,
                fontWeight: FontWeight.bold),
          ),
          TextButton(
            onPressed: () {Navigator.pop(context);},
            child: Text(
              AppLocalizations.of(context)!.home,
              style: TextStyle(
                color: appBarColor[900],
                fontSize: MediaQuery.of(context).size.width * 0.029,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          TextButton(
            onPressed: () {
              Navigator.push(
                  context,
                  ScaleRoute(
                      page:
                          AboutUsPage(toggleLanguage: widget.toggleLanguage)));
            },
            child: Text(
              AppLocalizations.of(context)!.aboutUs,
              style: TextStyle(
                  color: Colors.black,
                  fontSize: MediaQuery.of(context).size.width * 0.029,
                  fontWeight: FontWeight.bold),
            ),
          ),
          TextButton(
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (_) => ContactUsPage(toggleLanguage: widget.toggleLanguage,)));
            },
            child: Text(
              AppLocalizations.of(context)!.contact,
              style: TextStyle(
                  color: Colors.black,
                  fontSize: MediaQuery.of(context).size.width * 0.029,
                  fontWeight: FontWeight.bold),
            ),
          ),
          IconButton(
              onPressed: widget.toggleLanguage, icon: Icon(Icons.language))
        ],
      ),
    );
  }
}
