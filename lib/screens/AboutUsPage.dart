import 'package:flutter/material.dart';
import 'package:knee_osteoarthritis/colors.dart';
import 'package:knee_osteoarthritis/widgets/BottomMenu.dart';

import 'package:knee_osteoarthritis/widgets/aboutUsMenu.dart';

class AboutUsPage extends StatefulWidget {
  final Function() toggleLanguage;

  const AboutUsPage({super.key, required this.toggleLanguage});

  @override
  State<AboutUsPage> createState() => _AboutUsPageState();
}

class _AboutUsPageState extends State<AboutUsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appBarColor,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(
            top: MediaQuery.of(context).size.height * 0.02,
            bottom: MediaQuery.of(context).size.height * 0.02,
            right: MediaQuery.of(context).size.width * 0.02,
            left: MediaQuery.of(context).size.width * 0.051,
          ),
          child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(color: Colors.black26.withOpacity(1), blurRadius: 5)
                ]),
            width: MediaQuery.of(context).size.width * 0.92,
            height: MediaQuery.of(context).size.height * 0.91,
            child: Column(
              children: [
                AboutUsMenu(toggleLanguage: widget.toggleLanguage),
                SizedBox(height: MediaQuery.of(context).size.height * 0.015),
                Padding(
                  padding: const EdgeInsets.only(left: 15.0),
                  child: Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        "Supervisors:",
                        style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize:
                                MediaQuery.of(context).size.width * 0.055),
                      )),
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 0.015),
                Container(
                  width: MediaQuery.of(context).size.width * 0.799,
                  height: MediaQuery.of(context).size.height * 0.100,
                  decoration: BoxDecoration(
                      color: offWhite[900],
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black26.withOpacity(1),
                            blurRadius: 5,
                            offset: Offset(0, 2.5))
                      ],
                      borderRadius: BorderRadius.circular(6)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0, top: 5),
                        child: Text(
                          "Dr. Walaa Gad",
                          style: TextStyle(
                            fontSize: MediaQuery.of(context).size.width * 0.04,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: Text(
                          "Head of Information Systems (IS) Department",
                          style: TextStyle(
                            fontSize: MediaQuery.of(context).size.width * 0.04,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 0.02),
                Container(
                  width: MediaQuery.of(context).size.width * 0.799,
                  height: MediaQuery.of(context).size.height * 0.100,
                  decoration: BoxDecoration(
                      color: offWhite[900],
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black26.withOpacity(1),
                            blurRadius: 5,
                            offset: Offset(0, 2.5))
                      ],
                      borderRadius: BorderRadius.circular(6)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0, top: 5),
                        child: Text(
                          "T.A Nada Heider",
                          style: TextStyle(
                            fontSize: MediaQuery.of(context).size.width * 0.04,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: Text(
                          "Teaching Assistant at Information Systems (IS) Department",
                          style: TextStyle(
                            fontSize: MediaQuery.of(context).size.width * 0.04,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 0.015),
                Padding(
                  padding: const EdgeInsets.only(left: 15.0),
                  child: Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        "Team members:",
                        style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize:
                                MediaQuery.of(context).size.width * 0.055),
                      )),
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 0.02),
                Container(
                  width: MediaQuery.of(context).size.width * 0.799,
                  height: MediaQuery.of(context).size.height * 0.0525,
                  decoration: BoxDecoration(
                      color: offWhite[900],
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black26.withOpacity(1),
                            blurRadius: 5,
                            offset: Offset(0, 2.5))
                      ],
                      borderRadius: BorderRadius.circular(6)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Center(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 8.0, top: 10),
                          child: Text(
                            "Mostafa Ahmed Mostafa",
                            style: TextStyle(
                              fontSize:
                                  MediaQuery.of(context).size.width * 0.04,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 0.015),
                Container(
                  width: MediaQuery.of(context).size.width * 0.799,
                  height: MediaQuery.of(context).size.height * 0.0525,
                  decoration: BoxDecoration(
                      color: offWhite[900],
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black26.withOpacity(1),
                            blurRadius: 5,
                            offset: Offset(0, 2.5))
                      ],
                      borderRadius: BorderRadius.circular(6)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Center(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 8.0, top: 10),
                          child: Text(
                            "Gehad Taymoor Mohamady",
                            style: TextStyle(
                              fontSize:
                                  MediaQuery.of(context).size.width * 0.04,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 0.015),
                Container(
                  width: MediaQuery.of(context).size.width * 0.799,
                  height: MediaQuery.of(context).size.height * 0.0525,
                  decoration: BoxDecoration(
                      color: offWhite[900],
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black26.withOpacity(1),
                            blurRadius: 5,
                            offset: Offset(0, 2.5))
                      ],
                      borderRadius: BorderRadius.circular(6)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Center(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 8.0, top: 10),
                          child: Text(
                            "Marwan Walid Elsayed",
                            style: TextStyle(
                              fontSize:
                                  MediaQuery.of(context).size.width * 0.04,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 0.015),
                Container(
                  width: MediaQuery.of(context).size.width * 0.799,
                  height: MediaQuery.of(context).size.height * 0.0525,
                  decoration: BoxDecoration(
                      color: offWhite[900],
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black26.withOpacity(1),
                            blurRadius: 5,
                            offset: Offset(0, 2.5))
                      ],
                      borderRadius: BorderRadius.circular(6)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Center(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 8.0, top: 10),
                          child: Text(
                            "Mohamed Ashraf Sultan",
                            style: TextStyle(
                              fontSize:
                                  MediaQuery.of(context).size.width * 0.04,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 0.015),
                Container(
                  width: MediaQuery.of(context).size.width * 0.799,
                  height: MediaQuery.of(context).size.height * 0.0525,
                  decoration: BoxDecoration(
                      color: offWhite[900],
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black26.withOpacity(1),
                            blurRadius: 5,
                            offset: Offset(0, 2.5))
                      ],
                      borderRadius: BorderRadius.circular(6)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Center(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 8.0, top: 10),
                          child: Text(
                            "Mennatullah Mostafa Ahmed",
                            style: TextStyle(
                              fontSize:
                                  MediaQuery.of(context).size.width * 0.04,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 0.015),
                Container(
                  width: MediaQuery.of(context).size.width * 0.799,
                  height: MediaQuery.of(context).size.height * 0.0525,
                  decoration: BoxDecoration(
                      color: offWhite[900],
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black26.withOpacity(1),
                            blurRadius: 5,
                            offset: Offset(0, 2.5))
                      ],
                      borderRadius: BorderRadius.circular(6)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Center(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 8.0, top: 10),
                          child: Text(
                            "Salsabil Ahmed Zakaria",
                            style: TextStyle(
                              fontSize:
                                  MediaQuery.of(context).size.width * 0.04,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Spacer(),
                BottomMenu(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
