import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:knee_osteoarthritis/colors.dart';
import 'package:knee_osteoarthritis/widgets/UpperMenuHome.dart';
import 'SignInPage.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class SignUpPage extends StatefulWidget {
  final Function() toggleLanguage;

  SignUpPage({super.key, required this.toggleLanguage});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  bool passwordCondition = true;

  final auth = FirebaseAuth.instance;

  final emailController = TextEditingController();

  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appBarColor,
      body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
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
                    BoxShadow(
                        color: Colors.black26.withOpacity(1), blurRadius: 5)
                  ]),
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.95,
              child: Column(
                children: [
                  UpperMenuHome(toggleLanguage: widget.toggleLanguage),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.011,
                  ),
                  Container(
                      height: MediaQuery.of(context).size.height * 0.319,
                      width: MediaQuery.of(context).size.width * 0.655,
                      child:
                          Image(image: AssetImage('assets/images/Knee.png'))),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.011,
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          AppLocalizations.of(context)!.letsMake,
                          style: TextStyle(
                              fontSize:
                                  MediaQuery.of(context).size.width * 0.048,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w700,
                              color: Colors.black),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(13),
                    child: Column(
                      children: [
                        TextFormField(
                          controller: emailController,
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: Color(0xffD9D9D9),
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(25),
                                borderSide:
                                    BorderSide(color: Colors.transparent)),
                            hintText: AppLocalizations.of(context)!.email,
                          ),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.005,
                        ),
                        TextFormField(
                          obscureText: passwordCondition,
                          controller: passwordController,
                          decoration: InputDecoration(
                            suffixIcon: IconButton(
                                onPressed: () {
                                  setState(() {
                                    passwordCondition = !passwordCondition;
                                  });
                                },
                                icon: Icon(Icons.remove_red_eye)),
                            filled: true,
                            fillColor: Color(0xffD9D9D9),
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(25),
                                borderSide:
                                    BorderSide(color: Colors.transparent)),
                            hintText: AppLocalizations.of(context)!.password,
                          ),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.005,
                        ),
                        TextFormField(
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: Color(0xffD9D9D9),
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(25),
                                borderSide:
                                    BorderSide(color: Colors.transparent)),
                            hintText: AppLocalizations.of(context)!.username,
                          ),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.005,
                        ),
                        TextFormField(
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: Color(0xffD9D9D9),
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(25),
                                borderSide:
                                    BorderSide(color: Colors.transparent)),
                            hintText: AppLocalizations.of(context)!.phoneNumber,
                          ),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.015,
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.375,
                          height: MediaQuery.of(context).size.height * 0.05,
                          child: ElevatedButton(
                            onPressed: () {
                              String email = emailController.text;
                              String password = passwordController.text;
                              createAccount(email, password);
                              print("Done");

                              Navigator.of(context).pushAndRemoveUntil(
                                  MaterialPageRoute(
                                      builder: (_) => SignInPage(
                                            toggleLanguage:
                                                widget.toggleLanguage,
                                          )),
                                  (route) => false);
                            },
                            child: Text(
                              AppLocalizations.of(context)!.login,
                              style: TextStyle(color: Colors.white),
                            ),
                            style: ElevatedButton.styleFrom(
                              backgroundColor: appBarColor,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  void createAccount(String emailAddress, String password) async {
    try {
      final credential = await auth.createUserWithEmailAndPassword(
        email: emailAddress,
        password: password,
      );
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        print('The password provided is too weak.');
      } else if (e.code == 'email-already-in-use') {
        print('The account already exists for that email.');
      }
    } catch (e) {
      print(e);
    }
  }

  void dispose() {
    super.dispose();
    emailController.dispose();
    passwordController.dispose();
  }
}
