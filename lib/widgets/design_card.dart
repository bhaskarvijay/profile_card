import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter/cupertino.dart';
import 'dart:async';
import '../utils/designs.dart';
const _url = 'https://flutter.dev/search?q=url';
const kColorBlueCard = Color(0xFF0054b4);
const kColorCardBlueDivider = Color(0xFF48d1cc);

class DesignCard extends StatelessWidget {
  DesignCard({this.details, this.topColor, this.bottomColor});
  final Map details;
  final String topColor;
  final String bottomColor;
  @override
  Widget build(BuildContext context) {
    return Column(
      // crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(child: TopDesign(companyName: details['companyName'], topColor: topDesigns[topColor],), flex: 2,),
        Expanded(child: BottomDesign(phoneNumber: details['phoneNumber'],emailAddress: details['emailAddress'],address: details['address'],designation: details['designation'], bottomColor: bottomDesign[bottomColor],), flex: 3,),

      ],
    );
  }
}

class TopDesign extends StatelessWidget {
  TopDesign({this.companyName, this.topColor});
  final String companyName;
  final Color topColor;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: topColor,
      padding: EdgeInsets.all(10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            flex: 2,
            child: CircleAvatar(
              backgroundColor: Colors.white,
              // child: Image(
              //   image: AssetImage('images/sports.png'),
              // ),
              backgroundImage: AssetImage('images/art.png'),
              // radius: 100,
            ),
          ),
          Expanded(
            flex: 1,
            child: FittedBox(
              fit: BoxFit.fitWidth,
              child: Text(
                  companyName,
                  textAlign: TextAlign.center,
                  textHeightBehavior: TextHeightBehavior(),
                  style: TextStyle(
                    // fontFamily: 'Pacifico',
                    // fontSize: 25,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  )
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class BottomDesign extends StatelessWidget {
  BottomDesign({this.name, this.phoneNumber, this.emailAddress, this.address, this.companyName, this.designation, this.logo, this.bottomColor});
  final String name;
  final String phoneNumber;
  final String emailAddress;
  final String address;
  final String companyName;
  final String designation;
  final Image logo;
  final Color bottomColor;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: bottomColor,
      padding: EdgeInsets.only(bottom: 10),
      child: Center(
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.,
          children: [
            Expanded(
              flex: 2,
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 0),
                child: FittedBox(
                  fit: BoxFit.scaleDown,
                  child: Text(
                    designation,
                    style: TextStyle(
                      fontFamily: 'SourceSansPro',
                      // fontSize: 15,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 3,
                    ),
                  ),
                ),
              ),
            ),
            // Expanded(
            //   child: SizedBox(
            //     height: 20,
            //     width: 250,
            //     child: Divider(
            //       color: Colors.black,
            //     ),
            //   ),
            // ),
            Expanded(
              flex: 2,
              child: Container(
                // height: 50,
                margin: EdgeInsets.symmetric(vertical: 0, horizontal: 10),
                // padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                child: ListTile(
                  leading: Icon(
                    Icons.call,
                    color: Colors.black,
                  ),
                  title: FittedBox(
                    fit: BoxFit.scaleDown,
                    child: Text(
                      '+91 $phoneNumber',
                      style: TextStyle(
                        color: Colors.black,
                        letterSpacing: 2.5,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            // SizedBox(
            //   height: 20,
            // ),
            Expanded(
              flex: 2,
              child: Container(
                // height: 50,
                margin: EdgeInsets.symmetric(vertical: 0, horizontal: 10),
                // padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                child: ListTile(
                  leading: Icon(
                    Icons.mail,
                    color: Colors.black,
                  ),
                  title: FittedBox(
                    fit: BoxFit.scaleDown,
                    child: Text(
                      emailAddress,
                      style: TextStyle(
                        color: Colors.black,
                        letterSpacing: 2.5,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 3,
              child: Container(
                // height: 50,
                margin: EdgeInsets.symmetric(vertical: 0, horizontal: 10),
                // padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                child: ListTile(
                  leading: Icon(
                    Icons.location_on,
                    color: Colors.black,
                  ),
                  title: Text(
                    address,
                    style: TextStyle(
                      color: Colors.black,
                      // letterSpacing: 2.5,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

//this.name, this.phoneNumber, this.emailAddress, this.address, this.companyName, this.designation, this.logo,