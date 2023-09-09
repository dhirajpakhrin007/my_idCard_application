import 'package:flutter/material.dart';

class MyProfile extends StatelessWidget {
  const MyProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Profile'),
        centerTitle: true,
        backgroundColor: Colors.white,
      ),
      body: Container(
        color: Colors.teal,
        height: double.infinity,
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 60.0,
                backgroundImage: AssetImage('assets/image.jpg'),
              ),
              SizedBox(
                height: 10,
              ),
              Text('Dhiraj Pakhrin',
                style: TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.white
                ),
              ),
              Text('Flutter Developer',
                style: TextStyle(
                  fontSize: 24.0,
                  fontStyle: FontStyle.italic,
                  color: Colors.white
                ),
              ),
              Divider(
                height: 10,
                thickness: 1,
                indent: 120,
                endIndent: 120,
                color: Colors.white,
              ),
              SizedBox(
                height: 20.0,
              ),
              MyDetails(
                myIcon: Icons.phone,
                detail: '+977 98********',
              ),
              SizedBox(
                height: 10.0
              ),
              MyDetails(
                myIcon: Icons.mail,
                detail: '017BIM16@sxc.edu.np',
              ),
              SizedBox(
                height: 10.0
              ),
              MyDetails(
                myIcon: Icons.person,
                detail: '@dhirajPakhrin',
              ),
               SizedBox(
                height: 20.0
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Container(
                  height: 70.0,
                  width: 200.0,
                  color: Colors.white,
                  child: Center(child: Text('Sign Out')),
                ),
              )
        
            ],
          ),
        ),
      ),
    );
  }
}

class MyDetails extends StatelessWidget {
  final String detail;
  final IconData myIcon;

  const MyDetails({super.key, required this.detail, required this.myIcon});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50.0,
      width: double.infinity,
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.only(left:8.0),
        child: Row(
          children: [
            Icon(
              myIcon,
              color: Colors.teal,
              size: 35.0,
            ),
            SizedBox(
              width: 10.0,
            ),
            Text(
              detail,
              style: TextStyle(
                color: Colors.teal,
                fontSize: 20.0,
                fontWeight: FontWeight.bold
              ),
            ),
          ],
        ),
      ),
    );
  }
}