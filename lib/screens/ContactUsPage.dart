import 'package:flutter/material.dart';
import 'package:knee_osteoarthritis/colors.dart';
import 'package:knee_osteoarthritis/widgets/BottomMenu.dart';

import 'package:knee_osteoarthritis/widgets/aboutUsMenu.dart';

class ContactUsPage extends StatefulWidget {
  final Function() toggleLanguage;

  const ContactUsPage({super.key, required this.toggleLanguage});

  @override
  State<ContactUsPage> createState() => _ContactUsPageState();
}

class _ContactUsPageState extends State<ContactUsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: appBarColor,
        body: SafeArea(
            child: Padding(
              padding: EdgeInsets.only(
                top: MediaQuery.of(context).size.height * 0.02,
                bottom: MediaQuery.of(context).size.height * 0.02,
                right: MediaQuery.of(context).size.width * 0.03,
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
                              "Mostafa Ahmed Mostafa",
                              style: TextStyle(
                                fontSize: MediaQuery.of(context).size.width * 0.04,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 8.0),
                            child: Text(
                              "mostafaelzohirey7@gmail.com",
                              style: TextStyle(
                                fontSize: MediaQuery.of(context).size.width * 0.04,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 8.0),
                            child: Text(
                              "01000925918",
                              style: TextStyle(
                                fontSize: MediaQuery.of(context).size.width * 0.04,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: MediaQuery.of(context).size.height * 0.02),                Container(
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
                              "Gehad Taymoor Mohamdy",
                              style: TextStyle(
                                fontSize: MediaQuery.of(context).size.width * 0.04,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 8.0),
                            child: Text(
                              "gehadtaymoorr@gmail.com",
                              style: TextStyle(
                                fontSize: MediaQuery.of(context).size.width * 0.04,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 8.0),
                            child: Text(
                              "01011646066",
                              style: TextStyle(
                                fontSize: MediaQuery.of(context).size.width * 0.04,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: MediaQuery.of(context).size.height * 0.02),                Container(
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
                              "Marwan Walid El Sayed",
                              style: TextStyle(
                                fontSize: MediaQuery.of(context).size.width * 0.04,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 8.0),
                            child: Text(
                              "marwanwalid6666@gmail.com",
                              style: TextStyle(
                                fontSize: MediaQuery.of(context).size.width * 0.04,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 8.0),
                            child: Text(
                              "01015655325",
                              style: TextStyle(
                                fontSize: MediaQuery.of(context).size.width * 0.04,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: MediaQuery.of(context).size.height * 0.02),                Container(
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
                              "Mohamed Ashraf Sultan",
                              style: TextStyle(
                                fontSize: MediaQuery.of(context).size.width * 0.04,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 8.0),
                            child: Text(
                              "mohamedsultan@gmail.com",
                              style: TextStyle(
                                fontSize: MediaQuery.of(context).size.width * 0.04,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 8.0),
                            child: Text(
                              "01110814596",
                              style: TextStyle(
                                fontSize: MediaQuery.of(context).size.width * 0.04,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: MediaQuery.of(context).size.height * 0.02),                Container(
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
                              "Mennatullah Mostafa Ahmed",
                              style: TextStyle(
                                fontSize: MediaQuery.of(context).size.width * 0.04,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 8.0),
                            child: Text(
                              "mennamostafa@gmail.com",
                              style: TextStyle(
                                fontSize: MediaQuery.of(context).size.width * 0.04,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 8.0),
                            child: Text(
                              "01011441739",
                              style: TextStyle(
                                fontSize: MediaQuery.of(context).size.width * 0.04,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: MediaQuery.of(context).size.height * 0.02),                Container(
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
                              "Salsabil Ahmed Zakaria",
                              style: TextStyle(
                                fontSize: MediaQuery.of(context).size.width * 0.04,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 8.0),
                            child: Text(
                              "salsabilahmed015@gmail.com",
                              style: TextStyle(
                                fontSize: MediaQuery.of(context).size.width * 0.04,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 8.0),
                            child: Text(
                              "01151273056",
                              style: TextStyle(
                                fontSize: MediaQuery.of(context).size.width * 0.04,
                                fontWeight: FontWeight.w600,
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
