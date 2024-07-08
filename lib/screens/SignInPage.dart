import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:knee_osteoarthritis/colors.dart';
import 'package:knee_osteoarthritis/screens/SignUpPage.dart';
import 'package:knee_osteoarthritis/widgets/scale_route.dart';
import 'package:knee_osteoarthritis/widgets/BottomMenu.dart';
import 'package:knee_osteoarthritis/widgets/UpperMenuHome.dart';
import 'HomePage.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class SignInPage extends StatefulWidget {
  final Function() toggleLanguage;

  const SignInPage({super.key, required this.toggleLanguage});

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  bool passwordCondition = true;

  final emailController = TextEditingController();

  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appBarColor,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        physics: BouncingScrollPhysics(),
        child: SafeArea(
            child: Padding(
          padding: EdgeInsets.only(
            top: MediaQuery.of(context).size.height * 0.02,
            bottom: MediaQuery.of(context).size.height * 0.02,
            right: MediaQuery.of(context).size.width * 0.039,
            left: MediaQuery.of(context).size.width * 0.040,
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
              height: MediaQuery.of(context).size.height * 0.90,
              child: Stack(
                children: [
                  UpperMenuHome(toggleLanguage: widget.toggleLanguage),
                  Positioned(
                    top: 75,
                    left: 50,
                    right: 50,
                    child: Container(
                        height: 266,
                        width: 244,
                        child:
                            Image(image: AssetImage('assets/images/Knee.png'))),
                  ),
                  Positioned(
                    top: 360,
                    right: 41,
                    left: 41,
                    child: Text(
                      AppLocalizations.of(context)!.kneeOsteoarthritis,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: MediaQuery.of(context).size.width * 0.07,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                  Positioned(
                    width: 345,
                    top: 400,
                    left: 15,
                    child: Padding(
                      padding: const EdgeInsets.all(13),
                      child: TextFormField(
                        controller: emailController,
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
                    ),
                  ),
                  Positioned(
                    width: 345,
                    top: 475,
                    left: 15,
                    child: Padding(
                      padding: const EdgeInsets.all(13),
                      child: TextFormField(
                        obscureText: passwordCondition,
                        controller: passwordController,
                        decoration: InputDecoration(
                          suffixIcon: IconButton(
                            onPressed: () {
                              setState(() {
                                passwordCondition = !passwordCondition;
                              });
                            },
                            icon: Icon(Icons.remove_red_eye_outlined),
                          ),
                          filled: true,
                          fillColor: Color(0xffD9D9D9),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(25),
                              borderSide:
                                  BorderSide(color: Colors.transparent)),
                          hintText: AppLocalizations.of(context)!.password,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 575,
                    left: 75,
                    right: 75,
                    child: Center(
                      child: SizedBox(
                        width: MediaQuery.of(context).size.width * 0.36,
                        height: MediaQuery.of(context).size.height * 0.043,
                        child: ElevatedButton(
                          onPressed: () {
                            String email = emailController.text;
                            String password = passwordController.text;

                            logIn(context, email, password);
                          },
                          child: Text(
                            AppLocalizations.of(context)!.login,
                            style: TextStyle(color: Colors.white),
                          ),
                          style: ElevatedButton.styleFrom(
                              backgroundColor: azureBlue),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 650,
                    right: 137,
                    left: 137,
                    child: Center(
                      child: InkWell(
                        onTap: () {
                          Navigator.of(context).pushAndRemoveUntil(
                              ScaleRoute(
                                  page: SignUpPage(
                                      toggleLanguage: widget.toggleLanguage)),
                              (route) => false);
                        },
                        child: Text(
                          AppLocalizations.of(context)!.signUp,
                          style: TextStyle(
                            color: azureBlue,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Inter',
                            fontSize: MediaQuery.of(context).size.width * 0.04,
                          ),
                        ),
                      ),
                    ),
                  ),
                  const Align(
                      alignment: Alignment.bottomCenter,
                      child: const BottomMenu())
                ],
              )),
        )),
      ),
    );
  }

  void displayToast(String message) {
    Fluttertoast.showToast(
        msg: message,
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.SNACKBAR,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.red,
        textColor: Colors.white,
        fontSize: 16.0);
  }

  void logIn(context, String email, String password) async {
    String email = emailController.text;
    String password = passwordController.text;
    FirebaseAuth.instance
        .signInWithEmailAndPassword(
      email: email,
      password: password,
    )
        .then((value) {
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
              builder: (context) =>
                  HomePage(toggleLanguage: widget.toggleLanguage)));
    }).catchError((error) {
      if (error is FirebaseAuthException) {
        displayToast(error.toString());
      }
    });
  }
}
