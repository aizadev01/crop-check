import 'dart:async';

import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:camera/camera.dart';
import 'package:cropcheckpro/firebase_options.dart';
import 'package:cropcheckpro/screens/HomeScreen.dart';
import 'package:cropcheckpro/screens/Pages/LoginScreen.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';

List<CameraDescription> cameras = [];

void main() async {
  try {
    WidgetsFlutterBinding.ensureInitialized();
    cameras = await availableCameras();
    await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform,
    );
    runApp(const MyApp());
  } catch (e) {
    print(e.toString());
  }
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  late StreamSubscription<User?> user;

  // This widget is the root of your application.

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    user = FirebaseAuth.instance.authStateChanges().listen((user) {
      if (user == null) {
        print('User is currently signed out!');
      } else {
        print('User is signed in!');
      }
    });
  }

  @override
  void dispose() {
    user.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Crop Check',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute:
          FirebaseAuth.instance.currentUser == null ? 'login' : 'home',
      routes: {
        "home": (context) => const HomeScreen(),
        "login": (context) => const LoginScreen()
      },
      home: Scaffold(
        backgroundColor: Colors.white,
        body: AnimatedSplashScreen(
          splash: Image.asset(
            'assets/images/logo.png',
          ),
          splashTransition: SplashTransition.fadeTransition,
          nextScreen: LoginScreen(),
        ),
      ),
    );
  }
}
