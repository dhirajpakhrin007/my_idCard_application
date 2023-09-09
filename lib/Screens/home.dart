import 'package:flutter/material.dart';
import 'package:my_idcard_application/Screens/myProfile.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: Colors.purple,
        child: Center(
          child: GestureDetector(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => MyProfile()));
            },
            child: Container(
              height: 50.0,
              width: double.infinity,
              color: Colors.white,
              child: Center(child: Text('Visit my Profile')),
            ),
          ),
        )
      ),
    );
  }
}
