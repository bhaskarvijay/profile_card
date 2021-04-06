import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:profile_card/utils/designs.dart';
import 'package:profile_card/widgets/buttons.dart';

class Signup extends StatefulWidget {
  @override
  _SignupState createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  // final _auth = FirebaseAuth.instance;
  // Firebase.initializeApp();
  final FirebaseAuth _auth = FirebaseAuth.instance;
  String email;
  String password;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          // crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              margin: kTextFieldMargin,
              child: TextField(
                textAlign: TextAlign.center,
                onChanged: (value){
                  email = value;
                },
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Login ID',
                ),
              ),
            ),
            Container(
              margin: kTextFieldMargin,
              child: TextField(
                textAlign: TextAlign.center,
                obscureText: true,
                onChanged: (value){
                  password = value;
                },
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Password'
                ),
              ),
            ),
            ButtonLong(
              title: 'Register',
              buttonColor: Colors.blue[500],
              onPress: ()async{
              try {
                final UserCredential newUser = await _auth.createUserWithEmailAndPassword(email: email, password: password);
                if (newUser != null){
                  Navigator.pushNamed(context, '/get_user_details');
                }
              }
              catch (e){
                print(e);
              }
            },
            )
          ],
        ),
      ),
    );
  }
}


