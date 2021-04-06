import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import '../widgets/design_card.dart';

import '../utils/input_details.dart';
class DesignSellection extends StatefulWidget {
  @override
  _DesignSellectionState createState() => _DesignSellectionState();
}

class _DesignSellectionState extends State<DesignSellection> {
  // final _auth = FirebaseAuth.instance;
  // User loggedInUser;
  // @override
  // void initState() {
  //   // TODO: implement initState
  //   super.initState();
  //   getCurrentUser();
  // }
  // void getCurrentUser() async{
  //   try{
  //   final user = await _auth.currentUser;
  //   if (user != null){
  //     loggedInUser = user;
  //     print(loggedInUser.email);
  //   }}
  //   catch (e){
  //     print(e);
  //   }
  // }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Digital Card'
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            // mainAxisAlignment: MainAxisAlingment.center,
            // crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    DisplayCard(details: inputDetails,colorTop: 'color1',colorBottom: 'color1',),
                    DisplayCard(details: inputDetails,colorTop: 'color1',colorBottom: 'color2',),
                  ],
                ),
              ),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    DisplayCard(details: inputDetails,colorTop: 'color1',colorBottom: 'color3',),
                    DisplayCard(details: inputDetails,colorTop: 'color2',colorBottom: 'color1',),
                  ],
                ),
              ),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    DisplayCard(details: inputDetails,colorTop: 'color2',colorBottom: 'color2',),
                    DisplayCard(details: inputDetails,colorTop: 'color2',colorBottom: 'color3',),
                  ],
                ),
              ),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    DisplayCard(details: inputDetails,colorTop: 'color3',colorBottom: 'color1',),
                    DisplayCard(details: inputDetails,colorTop: 'color3',colorBottom: 'color2',),
                  ],
                ),
              ),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    DisplayCard(details: inputDetails,colorTop: 'color3',colorBottom: 'color3',),
                    DisplayCard(details: inputDetails,colorTop: 'color4',colorBottom: 'color1',),
                  ],
                ),
              ),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    DisplayCard(details: inputDetails,colorTop: 'color4',colorBottom: 'color2',),
                    DisplayCard(details: inputDetails,colorTop: 'color4',colorBottom: 'color3',),
                  ],
                ),
              ),
              ]
    )
    )
    )
    );
  }
}

class DisplayCard extends StatelessWidget {
  DisplayCard({this.details, this.colorTop, this.colorBottom});
  final Map details;
  final String colorTop;
  final String colorBottom;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        inputDetails['topColor'] = colorTop;
        inputDetails['bottomColor'] = colorBottom;
        Navigator.pushNamed(context, '/designpreview');

      },
      child: Container(
          margin: EdgeInsets.all(10),
          height: 250,
          width: 170,
          child: DesignCard(
            details: details,
            topColor: colorTop,
            bottomColor: colorBottom,
          )),
    );
  }
}
