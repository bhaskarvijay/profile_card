import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:profile_card/screens/get_user_details.dart';
import 'package:profile_card/screens/login.dart';
import 'package:profile_card/screens/welcome.dart';
import 'file:///C:/Users/HP/AndroidStudioProjects/profile_card/lib/screens/design_sellection.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:url_launcher/url_launcher.dart';
import 'dart:async';
import 'screens/my_profile.dart';
import 'screens/design_preview.dart';
import 'screens/signup.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
const _url = 'https://flutter.dev/search?q=url';
void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // theme:
      initialRoute: '/welcome',
      routes: {
        '/': (context) => DesignSellection(),
        '/designpreview': (context)=>DesignPreview(),
        '/myProfile': (context) => MyProfile(),
        '/welcome': (context) => Welcome(),
        '/login': (context) => Login(),
        '/signup': (context) => Signup(),
        '/get_user_details': (context) => GetUserDetails(),
      },
    );
  }
}
