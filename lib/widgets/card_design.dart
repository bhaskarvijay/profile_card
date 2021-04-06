import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter/cupertino.dart';
import 'dart:async';
import '../utils/designs.dart';
const _url = 'https://flutter.dev/search?q=url';
const kColorBlueCard = Color(0xFF0054b4);
const kColorCardBlueDivider = Color(0xFF48d1cc);
const kTopCardFlex = 2;
const kBottomCardFlex = 3;
const kBottomCardHorizontalMargin = 20.0;
const kBottomCardVerticalMargin = 10.0;
const kTopCardTextStyle = TextStyle(
  color: Colors.white,
  fontWeight: FontWeight.bold,
);
const kBottomCardTextStyle = TextStyle(
  fontFamily: 'SourceSansPro',
  // fontSize: 15,
  color: Colors.black,
  fontWeight: FontWeight.bold,
  letterSpacing: 3,
);
// class MyApp extends StatefulWidget {
//   @override
//   _MyAppState createState() => _MyAppState();
// }

// class _MyAppState extends State<MyApp> {
//   String name = 'Bhaskar Vijay';
//   String mobileNumber = 'tel:+91 8079016951';
//   String emailAddress = 'mailto:vijay.2@iitj.ac.in';
//   String address = 'Pasco House, Palam Gurgaon Road, Industrial Estate, Sector 18, Gurugram, Haryana 122001';
//   String query = Uri.encodeComponent(
//       'Pasco House, Palam Gurgaon Road, Industrial Estate, Sector 18, Gurugram, Haryana 122001');
//   String googleUrl = "";
//   bool firstTimeName = true;
//   bool firstTimeNumber = true;
//   bool firstTimeEmail = true;
//   bool firstTimeAddress = true;
//
//   final myName = TextEditingController();
//   final myNumber = TextEditingController();
//   final myEmail = TextEditingController();
//   final myAddress = TextEditingController();
//
//   @override
//   Widget build(BuildContext context) {
//     if (firstTimeName) {
//       return MaterialApp(
//         home: Scaffold(
//
//             appBar: AppBar(
//               title: Text('Input Details'),
//               backgroundColor: Colors.grey[600],
//             ),
//             backgroundColor: Colors.white,
//             body: SafeArea(
//               child: Column(
//                 // crossAxisAlignment: CrossAxisAlignment.stretch,
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   Card(
//                     margin: EdgeInsets.all(10),
//                     child: TextField(
//                       controller: myName,
//                       cursorColor: Colors.greenAccent,
//                       decoration: InputDecoration(
//                           hintText: "Enter Your Name",
//                           fillColor: Colors.white,
//                           border: OutlineInputBorder(
//                               borderRadius: BorderRadius.circular(10.0)
//                           )
//                       ),
//                     ),
//                   ),
//                   TextButton(
//                       onPressed: () {
//                         setState(() {
//                           name = myName.text;
//                           firstTimeName = false;
//                         });
//                       },
//                       child: Padding(
//                         padding: const EdgeInsets.all(8.0),
//                         child: Card(
//                           margin: EdgeInsets.all(10),
//                           child: Text(
//                               'Submit'
//                           ),
//                         ),
//                       )
//                   )
//                 ],
//               ),
//             )
//         ),
//       );
//     }
//     else if (firstTimeNumber) {
//       return MaterialApp(
//         home: Scaffold(
//
//             appBar: AppBar(
//               title: Text('Input Details'),
//               backgroundColor: Colors.grey[600],
//             ),
//             backgroundColor: Colors.white,
//             body: SafeArea(
//               child: Column(
//                 // crossAxisAlignment: CrossAxisAlignment.stretch,
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   Card(
//                     margin: EdgeInsets.all(10),
//                     child: TextField(
//                       controller: myNumber,
//                       cursorColor: Colors.greenAccent,
//                       decoration: InputDecoration(
//                           hintText: "Enter Your Number",
//                           fillColor: Colors.white,
//                           border: OutlineInputBorder(
//                               borderRadius: BorderRadius.circular(10.0)
//                           )
//                       ),
//                     ),
//                   ),
//                   TextButton(
//                       onPressed: () {
//                         setState(() {
//                           mobileNumber = myNumber.text;
//                           firstTimeNumber = false;
//                         });
//                       },
//                       child: Padding(
//                         padding: const EdgeInsets.all(8.0),
//                         child: Card(
//                           margin: EdgeInsets.all(10),
//                           child: Text(
//                               'Submit'
//                           ),
//                         ),
//                       )
//                   )
//                 ],
//               ),
//             )
//         ),
//       );
//     }
//     else if (firstTimeEmail) {
//       return MaterialApp(
//         home: Scaffold(
//
//             appBar: AppBar(
//               title: Text('Input Details'),
//               backgroundColor: Colors.grey[600],
//             ),
//             backgroundColor: Colors.white,
//             body: SafeArea(
//               child: Column(
//                 // crossAxisAlignment: CrossAxisAlignment.stretch,
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   Card(
//                     margin: EdgeInsets.all(10),
//                     child: TextField(
//                       controller: myEmail,
//                       cursorColor: Colors.greenAccent,
//                       decoration: InputDecoration(
//                           hintText: "Enter Your Email Address",
//                           fillColor: Colors.white,
//                           border: OutlineInputBorder(
//                               borderRadius: BorderRadius.circular(10.0)
//                           )
//                       ),
//                     ),
//                   ),
//                   TextButton(
//                       onPressed: () {
//                         setState(() {
//                           emailAddress = myEmail.text;
//                           firstTimeEmail = false;
//                         });
//                       },
//                       child: Padding(
//                         padding: const EdgeInsets.all(8.0),
//                         child: Card(
//                           margin: EdgeInsets.all(10),
//                           child: Text(
//                               'Submit'
//                           ),
//                         ),
//                       )
//                   )
//                 ],
//               ),
//             )
//         ),
//       );
//     }
//     else if (firstTimeAddress) {
//       return MaterialApp(
//         home: Scaffold(
//
//             appBar: AppBar(
//               title: Text('Input Details'),
//               backgroundColor: Colors.grey[600],
//             ),
//             backgroundColor: Colors.white,
//             body: SafeArea(
//               child: Column(
//                 // crossAxisAlignment: CrossAxisAlignment.stretch,
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   Card(
//                     margin: EdgeInsets.all(10),
//                     child: TextField(
//                       controller: myAddress,
//                       cursorColor: Colors.greenAccent,
//                       decoration: InputDecoration(
//                           hintText: "Enter Your Address",
//                           fillColor: Colors.white,
//                           border: OutlineInputBorder(
//                               borderRadius: BorderRadius.circular(10.0)
//                           )
//                       ),
//                     ),
//                   ),
//                   TextButton(
//                       onPressed: () {
//                         setState(() {
//                           address = myAddress.text;
//                           query = Uri.encodeComponent(address);
//                           firstTimeAddress = false;
//                         });
//                       },
//                       child: Padding(
//                         padding: const EdgeInsets.all(8.0),
//                         child: Card(
//                           margin: EdgeInsets.all(10),
//                           child: Text(
//                               'Submit'
//                           ),
//                         ),
//                       )
//                   )
//                 ],
//               ),
//             )
//         ),
//       );
//     }
//     else {
//       return MaterialApp(
//         home: Scaffold(
//             backgroundColor: Colors.indigo[900],
//             // appBar: AppBar(
//             //   title: Text('My Identity'),
//             //   backgroundColor: Colors.grey[600],
//             // ),
//             body: SafeArea(
//               child: Column(
//                 // crossAxisAlignment: CrossAxisAlignment.stretch,
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   CircleAvatar(
//                     backgroundColor: Colors.white,
//                     // child: Image(
//                     //   image: AssetImage('images/sports.png'),
//                     // ),
//                     backgroundImage: AssetImage('images/art.png'),
//                     radius: 100,
//                   ),
//                   Text(
//                       name,
//                       style: TextStyle(
//                         fontFamily: 'Pacifico',
//                         fontSize: 25,
//                         color: Colors.white,
//                         fontWeight: FontWeight.bold,
//                       )
//                   ),
//                   SizedBox(
//                     height: 20,
//                   ),
//                   Text(
//                     'ANDROID DEVELOPER',
//                     style: TextStyle(
//                       fontFamily: 'SourceSansPro',
//                       fontSize: 15,
//                       color: Colors.blue[100],
//                       fontWeight: FontWeight.bold,
//                       letterSpacing: 3,
//                     ),
//                   ),
//                   SizedBox(
//                     height: 20,
//                     width: 250,
//                     child: Divider(
//                       color: Colors.blue[400],
//                     ),
//                   ),
//                   TextButton(
//                     onPressed: () async {
//                       {
//                         await launch('tel:+91 $mobileNumber');
//                       }
//                     },
//                     child: Card(
//                       // height: 50,
//                       margin: EdgeInsets.symmetric(vertical: 2, horizontal: 40),
//                       // padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
//                       child: ListTile(
//                         leading: Icon(
//                           Icons.call,
//                           color: Colors.blue[900],
//                         ),
//                         title: Text(
//                           '+91 $mobileNumber',
//                           style: TextStyle(
//                             color: Colors.blue[900],
//                             letterSpacing: 2.5,
//                           ),
//                         ),
//                       ),
//                     ),
//                   ),
//                   // SizedBox(
//                   //   height: 20,
//                   // ),
//                   TextButton(
//                     onPressed: () async {
//                       {
//                         await launch('mailto:$emailAddress');
//                       }
//                     },
//                     child: Card(
//                       // height: 50,
//                       margin: EdgeInsets.symmetric(vertical: 2, horizontal: 40),
//                       // padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
//                       child: ListTile(
//                         leading: Icon(
//                           Icons.mail,
//                           color: Colors.blue[900],
//                         ),
//                         title: Text(
//                           emailAddress,
//                           style: TextStyle(
//                             color: Colors.blue[900],
//                             letterSpacing: 2.5,
//                           ),
//                         ),
//                       ),
//                     ),
//                   ),
//                   TextButton(
//                     onPressed: () async {
//                       googleUrl =
//                       'https://www.google.com/maps/search/?api=1&query=$query';
//                       {
//                         await launch(googleUrl);
//                       }
//                     },
//                     child: Card(
//                       // height: 50,
//                       margin: EdgeInsets.symmetric(vertical: 2, horizontal: 40),
//                       // padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
//                       child: ListTile(
//                         leading: Icon(
//                           Icons.location_on,
//                           color: Colors.blue[900],
//                         ),
//                         title: Text(
//                           address,
//                           style: TextStyle(
//                             color: Colors.blue[900],
//                             letterSpacing: 2.5,
//                           ),
//                         ),
//                       ),
//                     ),
//                   ),
//
//                 ],
//               ),
//             )
//         ),
//       );
//     }
//   }
// }
class CardDesign extends StatelessWidget {
  CardDesign({this.name, this.phoneNumber, this.emailAddress, this.address, this.companyName, this.designation, this.logo});
  final String name;
  final String phoneNumber;
  final String emailAddress;
  final String address;
  final String companyName;
  final String designation;
  final Image logo;
  @override
  Widget build(BuildContext context) {
    return Column(
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
            name,
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
            {
              await launch('tel:+91 $phoneNumber');
            }
          },
          child: Card(
            // height: 50,
            margin: EdgeInsets.symmetric(vertical: 2, horizontal: 40),
            // padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
            child: ListTile(
              leading: Icon(
                Icons.call,
                color: kColorBlueCard,
              ),
              title: Text(
                '+91 $phoneNumber',
                style: TextStyle(
                  color: kColorBlueCard,
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
            {
              await launch('mailto:$emailAddress');
            }
          },
          child: Card(
            // height: 50,
            margin: EdgeInsets.symmetric(vertical: 2, horizontal: 40),
            // padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
            child: ListTile(
              leading: Icon(
                Icons.mail,
                color: kColorBlueCard,
              ),
              title: Text(
                emailAddress,
                style: TextStyle(
                  color: kColorBlueCard,
                  letterSpacing: 2.5,
                ),
              ),
            ),
          ),
        ),
        TextButton(
          onPressed: () async {
            {
              await launch('https://www.google.com/maps/search/?api=1&query=$address');
            }
          },
          child: Card(
            // height: 50,
            margin: EdgeInsets.symmetric(vertical: 2, horizontal: 40),
            // padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
            child: ListTile(
              leading: Icon(
                Icons.location_on,
                color: kColorBlueCard,
              ),
              title: Text(
                address,
                style: TextStyle(
                  color: kColorBlueCard,
                  letterSpacing: 2.5,
                ),
              ),
            ),
          ),
        ),

      ],
    );
  }
}
class CardDesignRed extends StatelessWidget {
  CardDesignRed({this.details, this.topColor, this.bottomColor});
  final Map details;
  final String topColor;
  final String bottomColor;
  @override
  Widget build(BuildContext context) {
    return Column(
      // crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          child: TopDesign(
            companyName: details['companyName'],
            topColor: topDesigns[topColor],
          ),
          flex: kTopCardFlex,
        ),
        Expanded(
          child: BottomDesign(
            phoneNumber: details['phoneNumber'],
            emailAddress: details['emailAddress'],
            address: details['address'],
            designation: details['designation'],
            bottomColor: bottomDesign[bottomColor],
          ),
          flex: kBottomCardFlex,
        ),
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
                  style: kTopCardTextStyle,
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
                padding: EdgeInsets.symmetric(horizontal: kBottomCardHorizontalMargin, vertical: kBottomCardVerticalMargin),
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
              child: TextButton(
                onPressed: () async {
                  {
                    await launch('tel:+91 $phoneNumber');
                  }
                },
                child: Container(
                  // height: 50,
                  margin: EdgeInsets.symmetric(vertical: 0, horizontal: 10),
                  // padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                  child: ListTile(
                    leading: CardIcon(
                      icon: Icons.call,
                    ),
                    title: FittedBox(
                      fit: BoxFit.scaleDown,
                      child: TextLink(displayLink: '+91 $phoneNumber',)
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
              child: TextButton(
                onPressed: () async {
                  {
                    await launch('mailto:$emailAddress');
                  }
                },
                child: Container(
                  // height: 50,
                  margin: EdgeInsets.symmetric(vertical: 0, horizontal: 10),
                  // padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                  child: ListTile(
                    leading: CardIcon(
                      icon: Icons.mail,
                    ),
                    title: FittedBox(
                      fit: BoxFit.scaleDown,
                      child: TextLink(displayLink: emailAddress,)
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: TextButton(
                onPressed: () async {
                  {
                    await launch('https://www.google.com/maps/search/?api=1&query=$address');
                  }
                },
                child: Container(
                  // height: 50,
                  margin: EdgeInsets.symmetric(vertical: 0, horizontal: 10),
                  // padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                  child: ListTile(
                    leading: CardIcon(icon: Icons.location_on,),
                    title: TextLink(displayLink: address),
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

class CardIcon extends StatelessWidget {
  const CardIcon({
    Key key,
    @required this.icon,
  });
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Icon(
      icon,
      color: Colors.black,
    );
  }
}

class TextLink extends StatelessWidget {
  const TextLink({
    @required this.displayLink,
  });

  final String displayLink;

  @override
  Widget build(BuildContext context) {
    return Text(
      displayLink,
      style: TextStyle(
        color: Colors.black,
        // letterSpacing: 2.5,
      ),
    );
  }
}

//this.name, this.phoneNumber, this.emailAddress, this.address, this.companyName, this.designation, this.logo,