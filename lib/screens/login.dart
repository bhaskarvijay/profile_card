import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:profile_card/utils/designs.dart';
import 'package:profile_card/widgets/buttons.dart';
class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  String email;
  String password;
  final FirebaseAuth _auth = FirebaseAuth.instance;
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
                onPress: ()async{
                  try {
                    UserCredential userCredential = await FirebaseAuth.instance.signInWithEmailAndPassword(
                      email: email,
                      password: password,
                    );
                    if (userCredential != null){
                      Navigator.pushNamed(context, 'myProfile');
                    }
                  } on FirebaseAuthException catch (e) {
                    if (e.code == 'user-not-found') {
                      print('No user found for that email.');
                    } else if (e.code == 'wrong-password') {
                      print('Wrong password provided for that user.');
                    }
                  }
                  print(email);
                  print(password);
                },
                title: 'Login',
                buttonColor: Colors.green[500],
            ),
          ],
        ),
      ),
    );
  }
}

