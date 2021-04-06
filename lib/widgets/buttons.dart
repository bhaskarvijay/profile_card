import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:profile_card/utils/designs.dart';
class ButtonLong extends StatelessWidget {
  const ButtonLong({
    // @required FirebaseAuth auth,
    @required this.onPress,
    @required this.title,
    @required this.buttonColor,
  });

  // final FirebaseAuth _auth;
  final Function onPress;
  final String title;
  final Color buttonColor;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        // height: 30.0,
        width: double.infinity,
        margin: EdgeInsets.symmetric(vertical: 0, horizontal: kHorizontalMargin),
        padding: EdgeInsets.symmetric(vertical: 15, horizontal: 5),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: buttonColor,
        ),
        // color: Colors.green[500],
        child: Text(
          title,
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}