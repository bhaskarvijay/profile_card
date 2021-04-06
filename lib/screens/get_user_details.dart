import 'package:flutter/material.dart';
import 'package:profile_card/utils/designs.dart';
import 'package:profile_card/widgets/buttons.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:profile_card/utils/input_details.dart';
class GetUserDetails extends StatefulWidget {
  @override
  _GetUserDetailsState createState() => _GetUserDetailsState();
}

class _GetUserDetailsState extends State<GetUserDetails> {
  final _firestore =FirebaseFirestore.instance;
  // final Map userDetails = {};

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                margin: kTextFieldMargin,
                child: TextField(
                  textAlign: TextAlign.center,
                  onChanged: (value){
                    inputDetails['name'] = value;
                  },
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Name',
                  ),
                ),
              ),
              Container(
                margin: kTextFieldMargin,
                child: TextField(
                  textAlign: TextAlign.center,
                  onChanged: (value){
                    inputDetails['phoneNumber'] = value;
                  },
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Phone Number',
                  ),
                ),
              ),
              Container(
                margin: kTextFieldMargin,
                child: TextField(
                  textAlign: TextAlign.center,
                  onChanged: (value){
                    inputDetails['emailAddress'] = value;
                  },
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Email',
                  ),
                ),
              ),
              Container(
                margin: kTextFieldMargin,
                child: TextField(
                  textAlign: TextAlign.center,
                  onChanged: (value){
                    inputDetails['designation'] = value;
                  },
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Designation',
                  ),
                ),
              ),
              Container(
                margin: kTextFieldMargin,
                child: TextField(
                  textAlign: TextAlign.center,
                  onChanged: (value){
                    inputDetails['companyName'] = value;
                  },
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Company Name',
                  ),
                ),
              ),
              Container(
                margin: kTextFieldMargin,
                child: TextField(
                  textAlign: TextAlign.center,
                  onChanged: (value){
                    inputDetails['address'] = value;
                  },
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Address',
                  ),
                ),
              ),
              ButtonLong(
                onPress: (){
                  _firestore.collection('cards').add(
                    {
                      'name': inputDetails['name'],
                      'emailAddress': inputDetails['emailAddress'],
                      'phoneNumber': inputDetails['phoneNumber'],
                      'designation': inputDetails['designation'],
                      'companyName': inputDetails['companyName'],
                      'address': inputDetails['address'],
                      'topColor': inputDetails['topColor'],
                      'bottomColor': inputDetails['bottomColor'],
                    }
                  );
                  Navigator.pushNamed(context, '/');
                },
                title: 'Create Card',
                buttonColor: Colors.green[500],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
