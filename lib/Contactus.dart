import 'package:cogniex/Constants.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Contactus extends StatelessWidget {
  const Contactus({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ninty,
        centerTitle: true,
        title: Text(
          'Book Appointment',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      backgroundColor: ten,
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(12),
                child: Text(
                  'We Are open And Welcoming Patients',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Image(
                image: AssetImage('assets/hero-banner.png'),
                height: 500,
              ),
              InkWell(
                child: Container(
                  margin: EdgeInsets.all(30),
                  height: 50,
                  width: 200,
                  decoration: BoxDecoration(
                      color: Colors.blue.shade700,
                      borderRadius: BorderRadius.circular(30),boxShadow: [BoxShadow(color: Colors.blue.shade700,blurRadius: 10)]),
                  child: Center(
                      child: Text(
                    'Contact us',
                    style: TextStyle(fontSize: 25, color: Colors.white,fontWeight: FontWeight.bold),
                  )),
                ),
              ),
              Center(child: ListTile(leading: Icon(FontAwesomeIcons.clock,color: Colors.white,),title: Text('Monday - Saturday\n9:00am - 10:00pm'),textColor: Colors.white,)),
              Center(child: ListTile(leading: Icon(FontAwesomeIcons.locationDot,color: Colors.white,),title: Text('United University,\nRawatPur, Prayagraj'),textColor: Colors.white,)),
              Center(child: ListTile(leading: Icon(FontAwesomeIcons.phone ,color:Colors.white,),title: Text('+91 9920619416\n+91 9992061543'),textColor: Colors.white,)),
              Center(child: ListTile(leading: Icon(FontAwesomeIcons.solidEnvelope ,color:Colors.white,),title: Text('uniteduniversity@gmail.com\nunitedmedicity@gmail.com'),textColor: Colors.white,)),
              SizedBox(height: 30,)
            ],
          ),
        ),
      ),
    );
  }
}
