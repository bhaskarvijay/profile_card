import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../widgets/design_card.dart';
import 'file:///C:/Users/HP/AndroidStudioProjects/profile_card/lib/utils/input_details.dart';
import 'file:///C:/Users/HP/AndroidStudioProjects/profile_card/lib/models/my_details.dart';
class DesignPreview extends StatefulWidget {
  @override
  _MyProfileState createState() => _MyProfileState();
}

class _MyProfileState extends State<DesignPreview> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'My Profile',
        ),
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              flex: 5,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  color: Colors.indigo[900],
                ),
                margin: EdgeInsets.symmetric(vertical: 30.0, horizontal: 20.0),
                child: DesignCard(
                  details: inputDetails,
                  topColor: inputDetails['topColor'],
                  bottomColor: inputDetails['bottomColor'],
                ),
              ),
            ),
            // GestureDetector(
            //   onTap: (){
            //     myDetails = inputDetails;
            //     Navigator.pushNamed(context, '/myProfile');
            //   },
            //   child: Container(
            //     margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            //     padding: EdgeInsets.all(20),
            //     color: Colors.green,
            //     child: Text('Confirm'),
            //   ),
            // ),
            // GestureDetector(
            //   onTap: (){
            //     Navigator.pushNamed(context, '/');
            //   },
            //   child: Container(
            //     margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            //     padding: EdgeInsets.all(20),
            //     color: Colors.red,
            //     child: Text('Back'),
            //   ),
            // ),
            Row(
              children: [
                Expanded(
                  child: TextButton(
                    onPressed: (){
                      myDetails = inputDetails;
                      print(inputDetails['topColor']);
                      Navigator.pushNamed(context, '/myProfile');
                      // checkAnswer(true);
                    },
                    child: Card(
                      color: Colors.green,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 50),
                        child: Text(
                          'True',
                          style: TextStyle(
                            fontSize: 18,
                            fontFamily: 'LobsterTwo',
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: TextButton(
                    onPressed: (){
                      // checkAnswer(false);
                      Navigator.pushNamed(context, '/');
                    },
                    child: Card(
                      color: Colors.red,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 50),
                        child: Text(
                          'False',
                          style: TextStyle(
                            fontSize: 18,
                            fontFamily: 'LobsterTwo',
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

