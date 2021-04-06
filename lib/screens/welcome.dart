import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:profile_card/screens/my_profile.dart';
import 'package:profile_card/utils/designs.dart';
import 'package:profile_card/widgets/buttons.dart';
class Welcome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          // crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ButtonLong(
                onPress: (){
                  Navigator.pushNamed(context, '/login');
                },
                title: 'Login',
                buttonColor: Colors.green[500],
            ),
            SizedBox(
              width: double.infinity,
              height: 10.0,
            ),
            ButtonLong(
              onPress: (){
                Navigator.pushNamed(context, '/signup');
              },
              title: 'Register',
              buttonColor: Colors.blue[500],
            ),
            // TextButton(
            //   onPressed: (){
            //     Navigator.pushNamed(context, '/login');
            //   },
            //   child: Container(
            //     // height: 30.0,
            //     width: double.infinity,
            //     margin: EdgeInsets.symmetric(vertical: 0, horizontal: kHorizontalMargin),
            //     padding: EdgeInsets.symmetric(vertical: 15, horizontal: 5),
            //     decoration: BoxDecoration(
            //       borderRadius: BorderRadius.circular(15),
            //       color: Colors.green[500],
            //     ),
            //     // color: Colors.green[500],
            //     child: Text(
            //         'Login',
            //       textAlign: TextAlign.center,
            //       style: TextStyle(
            //         color: Colors.white,
            //       ),
            //     ),
            //   ),
            // ),
            //
            // TextButton(
            //   onPressed: (){
            //     Navigator.pushNamed(context, '/signup');
            //   },
            //   child: Container(
            //     // height: 30.0,
            //     width: double.infinity,
            //     margin: EdgeInsets.symmetric(vertical: 0, horizontal: kHorizontalMargin),
            //     padding: EdgeInsets.symmetric(vertical: 15, horizontal: 5),
            //     decoration: BoxDecoration(
            //       borderRadius: BorderRadius.circular(15),
            //       color: Colors.blue[500],
            //     ),
            //     // color: Colors.green[500],
            //     child: Text(
            //       'Register',
            //       textAlign: TextAlign.center,
            //       style: TextStyle(
            //         color: Colors.white,
            //       ),
            //     ),
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
