import 'package:cogniex/Constants.dart';
import 'package:flutter/material.dart';

class AboutUs extends StatelessWidget {
  const AboutUs({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ninty,
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 10,),
            Center(
                child: Text(
              'Our Team',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Colors.blue),
            )),
            SizedBox(height: 10,),
            Center(
                child: Text(
              'Team of Experts',
              style: TextStyle(
                  fontWeight: FontWeight.bold, fontSize: 30, color: ten),
            )),
            SizedBox(height: 20,),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  AboutDoctor(image: 'doctor-1.png', name: 'Howard Holmes', profile: 'Doctor'),
                  AboutDoctor(image: 'doctor-2.png', name: 'Ella Thompson', profile: 'Nurse'),
                  AboutDoctor(image: 'doctor-3.png', name: 'Vincent Cooper', profile: 'Doctor'),
                  AboutDoctor(image: 'doctor-4.png', name: 'Danielle Bryant', profile: 'Doctor'),
                ],
              ),

            ),

          ],
        ),
      ),
    );
  }
}
