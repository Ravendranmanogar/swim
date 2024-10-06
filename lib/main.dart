import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:swim/confirmation.dart';
import 'package:swim/location.dart';
import 'package:swim/login_page.dart';
import 'package:swim/sign_up_page.dart';
import 'package:swim/slot.dart';
import 'package:swim/turf_option.dart';


import 'firebase_options.dart';

void main() async{
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.transparent, // Global background color
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => LoginPage(),
        '/signUp': (context) => SignUpPage(),
        '/selectLocation': (context) => SelectLocationPage(),
        '/turfOptions': (context) => TurfOptionsPage(),
        '/slotSelection': (context) => SlotSelectionPage(),
        '/confirmation': (context) => ConfirmationPage(),
      },
    );
  }
}
