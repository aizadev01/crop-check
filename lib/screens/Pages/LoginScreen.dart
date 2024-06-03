import 'package:cropcheckpro/screens/HomeScreen.dart';
import 'package:cropcheckpro/screens/Pages/SignUpScreen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../constants.dart';
import '../../widgets/AuthenticationButton.dart';
import '../../widgets/CustomTextField.dart';
import '../../widgets/curve.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  static const String id = 'LoginScreen';

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _auth = FirebaseAuth.instance;
  bool rememberMe = false;
  String email = '';
  String password = '';

  Future<void> validateUser() async {
    try {
      final UserCredential? userCredential =
      await _auth.signInWithEmailAndPassword(
          email: email.trim(), password: password.trim());
      if (userCredential != null) {
        Navigator.push(context,  MaterialPageRoute(
            builder: (context) => const HomeScreen()
        ));

      }else{
        var snackBar = const SnackBar(content: Text('Invalid Credentials!'));
        ScaffoldMessenger.of(context).showSnackBar(snackBar);
      }
    } catch (e) {
      print(e);
      var snackBar = const SnackBar(content: Text("Login Failed!"));
      ScaffoldMessenger.of(context).showSnackBar(snackBar);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Stack(
        alignment: Alignment.bottomRight,
        fit: StackFit.expand,
        children: [
          // First Child in the stack

          // ClipPath(
          //   clipper: ImageClipper(),
          //   child: Image.asset(
          //     'images/leaves.jpg',
          //     alignment: Alignment.topCenter,
          //     fit: BoxFit.fitWidth,
          //   ),
          // ),

          // Positioned(
          //   top: 30.0,
          //   left: 20.0,
          //   child: CircleAvatar(
          //     backgroundColor: Colors.white,
          //     radius: 20.0,
          //     child: IconButton(
          //       onPressed: () {},
          //       icon: Icon(
          //         Icons.arrow_back_ios_new,
          //         color: kDarkGreenColor,
          //         size: 24.0,
          //       ),
          //     ),
          //   ),
          // ),

          // Second Child in the stack
          Positioned(
            height: MediaQuery.of(context).size.height * 0.8,
            width: MediaQuery.of(context).size.width,
            child: Scaffold(
              body: SingleChildScrollView(
                child: Container(
                  constraints: BoxConstraints(
                    maxHeight: MediaQuery.of(context).size.height * 0.67,
                    maxWidth: MediaQuery.of(context).size.width,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      // First Column
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            'Welcome Back',
                            style: GoogleFonts.poppins(
                              fontSize: 32.0,
                              fontWeight: FontWeight.w600,
                              color: kDarkGreenColor,
                            ),
                          ),
                          Text(
                            'Login to your account',
                            style: GoogleFonts.poppins(
                              color: kGreyColor,
                              fontSize: 15.0,
                            ),
                          )
                        ],
                      ),

                      // Second Column
                      Column(
                        children: [
                          CustomTextField(
                            hintText: 'Email',
                            icon: Icons.email,
                            keyboardType: TextInputType.emailAddress,
                            onChanged: (value) {
                              email = value != '' ? value : '';
                            },
                          ),
                          CustomTextField(
                            hintText: 'Password',
                            icon: Icons.lock,
                            obscureText: true,
                            keyboardType: TextInputType.visiblePassword,
                            onChanged: (value) {
                              password = value != '' ? value : '';
                            },
                          ),
                          Padding(
                            padding:
                            const EdgeInsets.symmetric(horizontal: 10.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Checkbox(
                                      checkColor: Colors.white,
                                      fillColor: MaterialStateProperty.all(
                                          kDarkGreenColor),
                                      value: rememberMe,
                                      onChanged: (value) {
                                        setState(() {
                                          rememberMe = value!;
                                        });
                                      },
                                    ),
                                    Text(
                                      'Remember Me',
                                      style: TextStyle(
                                        color: kGreyColor,
                                        fontSize: 14.0,
                                      ),
                                    )
                                  ],
                                ),
                                TextButton(
                                  onPressed: () {
                                  },
                                  style: TextButton.styleFrom(
                                    foregroundColor: kDarkGreenColor,

                                  ),
                                  child: const Text(
                                    'Forgot Password ?',
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),

                      // Third Column
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 20.0,
                          right: 20.0,
                          bottom: 20.0,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            AuthenticationButton(
                              label: 'Log In',
                              onPressed: () {
                                validateUser();
                              },
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 10.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  const Text(
                                    'Don\'t have an account ?',
                                    style: TextStyle(fontSize: 14.0),
                                  ),
                                  TextButton(
                                    style: ButtonStyle(
                                      foregroundColor:
                                      MaterialStateProperty.all(
                                          kDarkGreenColor),
                                    ),
                                    onPressed: () {
                                      Navigator.push(context,  MaterialPageRoute(
                                          builder: (context) => const SignupScreen()
                                      ));
                                    },
                                    child: const Text(
                                      'Sign up',
                                      style: TextStyle(fontSize: 14.0),
                                    ),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}