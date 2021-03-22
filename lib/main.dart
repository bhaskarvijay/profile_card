import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
// import 'package:url_launcher/url_launcher.dart';
import 'package:url_launcher/url_launcher.dart';
import 'dart:async';
const _url = 'https://flutter.dev/search?q=url';
void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String mobileNumber = 'tel:+91 8079016951';
  String emailAddress = 'mailto:vijay.2@iitj.ac.in';
  String address = 'Pasco House, Palam Gurgaon Road, Industrial Estate, Sector 18, Gurugram, Haryana 122001';
  String query = Uri.encodeComponent('Pasco House, Palam Gurgaon Road, Industrial Estate, Sector 18, Gurugram, Haryana 122001');
  String googleUrl = "";
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          backgroundColor: Colors.indigo[900],
          // appBar: AppBar(
          //   title: Text('My Identity'),
          //   backgroundColor: Colors.grey[600],
          // ),
          body: SafeArea(
            child: Column(
              // crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  backgroundColor: Colors.white,
                  // child: Image(
                  //   image: AssetImage('images/sports.png'),
                  // ),
                  backgroundImage: AssetImage('images/art.png'),
                  radius: 100,
                ),
                Text(
                    'Bhaskar Vijay',
                    style: TextStyle(
                      fontFamily: 'Pacifico',
                      fontSize: 25,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    )
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'ANDROID DEVELOPER',
                  style: TextStyle(
                    fontFamily: 'SourceSansPro',
                    fontSize: 15,
                    color: Colors.blue[100],
                    fontWeight: FontWeight.bold,
                    letterSpacing: 3,
                  ),
                ),
                SizedBox(
                  height: 20,
                  width: 250,
                  child: Divider(
                    color: Colors.blue[400],
                  ),
                ),
                TextButton(
                  onPressed: () async {
                    { await launch(mobileNumber);}
                  },
                  child: Card(
                    // height: 50,
                    margin: EdgeInsets.symmetric(vertical: 2, horizontal: 40),
                    // padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                    child: ListTile(
                      leading: Icon(
                        Icons.call,
                        color: Colors.blue[900],
                      ),
                      title: Text(
                        '+91 8504018655',
                        style: TextStyle(
                          color: Colors.blue[900],
                          letterSpacing: 2.5,
                        ),
                      ),
                    ),
                  ),
                ),
                // SizedBox(
                //   height: 20,
                // ),
                TextButton(
                  onPressed: () async {
                    { await launch(emailAddress);}
                  },
                  child: Card(
                    // height: 50,
                    margin: EdgeInsets.symmetric(vertical: 2, horizontal: 40),
                    // padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                    child: ListTile(
                      leading: Icon(
                        Icons.mail,
                        color: Colors.blue[900],
                      ),
                      title: Text(
                        'vijay.2@iitj.ac.in',
                        style: TextStyle(
                          color: Colors.blue[900],
                          letterSpacing: 2.5,
                        ),
                      ),
                    ),
                  ),
                ),
                TextButton(
                  onPressed: () async {
                    googleUrl = 'https://www.google.com/maps/search/?api=1&query=$query';
                    { await launch(googleUrl);}
                  },
                  child: Card(
                    // height: 50,
                    margin: EdgeInsets.symmetric(vertical: 2, horizontal: 40),
                    // padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                    child: ListTile(
                      leading: Icon(
                        Icons.location_on,
                        color: Colors.blue[900],
                      ),
                      title: Text(
                        address,
                        style: TextStyle(
                          color: Colors.blue[900],
                          letterSpacing: 2.5,
                        ),
                      ),
                    ),
                  ),
                ),

              ],
            ),
          )
      ),
    );
  }
}

// class PhoneMethods {
//   callPhoneApp({String number}) async {
//     String url = 'https://flutter.dev/search?q=url';
//     print(canLaunch(url).then((bool){
//       print('>>>>>>>>>>>>>>>>>>>>>>>');
//       print(bool);
//     }));
//     if (await canLaunch(_url)) {
//       await launch(_url);
//     } else {
//
//       throw 'Could not launch $_url';
//     }
//
//   }
// }
