import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'file:///C:/Users/HP/AndroidStudioProjects/profile_card/lib/models/my_details.dart';
import '../widgets/card_design.dart';
import '../utils/input_details.dart';
// import 'my_profile/my_details.dart';
import 'package:profile_card/utils/designs.dart';
class MyProfile extends StatefulWidget {
  @override
  _MyProfileState createState() => _MyProfileState();
}

class _MyProfileState extends State<MyProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'My Profile',
        ),
      ),
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(kBorderRadious),
            // color: Colors.indigo[900],
          ),
          margin: EdgeInsets.symmetric(vertical: kVerticalMargin, horizontal: kHorizontalMargin),
          child: CardDesignRed(
            details: inputDetails,
            topColor: myDetails['topColor'],
            bottomColor: myDetails['bottomColor'],
          ),
        ),
      ),
    );
  }
}

