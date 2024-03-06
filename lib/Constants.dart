import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

const ten = Color.fromRGBO(26, 3, 59, 20);
const ninty = Color.fromRGBO(221, 226, 255, 20);

class Drawermenue extends StatelessWidget {
  var icon;
  var name, navigate;
  Drawermenue(
      {super.key, this.icon = null, required this.name, this.navigate = null});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: ListTile(
        leading: Icon(
          icon,
          color: ninty,
          size: 25,
        ),
        title: Text(
          name,
          style: TextStyle(
              color: ninty, fontWeight: FontWeight.bold, fontSize: 20),
        ),
        onTap: () {
          Navigator.of(context).pop();
          if (navigate != null && navigate != context) {
            Navigator.push(
                context, MaterialPageRoute(builder: (contex) => navigate));
          }
        },
      ),
    );
  }
}

class VerticalmenuContainer extends StatelessWidget {
  var image, name, icon, bcolor, ontap;
  bool isbig, widthinfinity;
  double height, width;
  VerticalmenuContainer(
      {super.key,
      required this.ontap,
      this.image = null,
      required this.name,
      this.isbig = false,
      this.icon = null,
      this.widthinfinity = false,
      this.height = 0,
      this.width = 0,
      this.bcolor = null});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: Colors.transparent,
      onTap: ontap,
      child: Container(
        margin: EdgeInsets.all(10),
        height: (height != 0)
            ? height
            : (isbig)
                ? 250
                : 150,
        width: (width != 0)
            ? width
            : (isbig)
                ? 200
                : (widthinfinity)
                    ? double.infinity
                    : 150,
        decoration: BoxDecoration(
            color: (bcolor != null) ? bcolor : Colors.grey.shade200,
            borderRadius: BorderRadius.circular(10)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: (height != 0)
                  ? height - 50
                  : (isbig)
                      ? 200
                      : 120,
              //  width: (width!=0)?width:(isbig)?250:(widthinfinity)?double.infinity:150,
              width: (width != 0) ? width : double.infinity,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(image), fit: BoxFit.cover),
                  borderRadius: BorderRadius.circular(10)),
              child: Center(
                child: Icon(
                  icon,
                  size: (height != 0)
                      ? height - 20
                      : (isbig)
                          ? 150
                          : 80,
                  color: ten,
                ),
              ),
            ),
            Text(
              name,
              style: TextStyle(
                  fontSize: 16, fontWeight: FontWeight.bold, color: ten),
              textAlign: TextAlign.center,
            )
          ],
        ),
      ),
    );
  }
}

class PlansTile extends StatelessWidget {
  var heading, discription, leading, navigateto;
  PlansTile(
      {super.key,
      required this.leading,
      required this.discription,
      required this.heading,
      this.navigateto = null});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 10),
      padding: EdgeInsets.all(5),
      // height: 500,
      width: 200,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: Colors.indigo.shade100, width: 2)),
      child: ListTile(
        iconColor: ten,
        contentPadding: EdgeInsets.all(10),
        leading: Image.asset(
          'assets/$leading',
          width: 100,
          height: 100,
        ),
        title: Text(
          heading,
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        subtitle: Text('$discription'),
        trailing: IconButton(
            onPressed: () {
              if (navigateto != null && navigateto != context) {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => navigateto));
              }
            },
            icon: Icon(
              Icons.arrow_circle_right,
              size: 50,
            )),
        //trailing: IconButton(onPressed:(){}) ,icon: Icon(Icons.arrow_circle_right_outlined,size: 60,),
      ),
    );
  }
}

class AboutDoctor extends StatelessWidget {
  final image, name, profile, pricingtext;
  bool widthInfinity;
  AboutDoctor(
      {super.key,
      required this.image,
      required this.name,
      required this.profile,
      this.widthInfinity = false,
      this.pricingtext = null});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(5),
      decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(color: Colors.indigo.shade100),
          borderRadius: BorderRadius.circular(10)),
      margin: EdgeInsets.all(10),
      height: (widthInfinity)?600:500,
      width: 400,
      child: Column(
        children: [
          Container(
            height: 320,
            width: (widthInfinity) ? double.infinity : 300,
            padding: EdgeInsets.only(bottom: 20, left: 5, right: 5),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                    image: AssetImage(
                      'assets/$image',
                    ),
                    fit: BoxFit.cover)),
            child: (!widthInfinity)?null:Container(
              width: (pricingtext[0] == 'F') ? 90 : 180,
             // margin: EdgeInsets.all(5),
              padding: EdgeInsets.all(8),
              decoration: BoxDecoration(
                  color: (widthInfinity) ? ten : null,
                  borderRadius: BorderRadius.circular(10)),
              child: Row(
                children: [
                  Icon(
                    CupertinoIcons.calendar_badge_minus,
                    color: Colors.white,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    pricingtext,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            alignment: Alignment.bottomLeft,
          ),
          Text(
            name,
            style: TextStyle(
                fontSize: 30, fontWeight: FontWeight.bold, color: ten),
            textAlign: TextAlign.center,
          ),
          Text(
            profile,
            style: TextStyle(fontSize: (widthInfinity) ? 15 : 20),
          ),
          Padding(
            padding: EdgeInsets.only(top: 20, left: 100, right: 100),
            child: (widthInfinity)
                ? InkWell(
                    onTap: () {},
                    child: Container(
                      padding: EdgeInsets.all(8),
                      decoration: BoxDecoration(boxShadow: [
                        BoxShadow(
                            color: Colors.indigo.shade500,
                            blurRadius: 5,
                            spreadRadius: 2)
                      ], color: ten, borderRadius: BorderRadius.circular(25)),
                      child: Text(
                        'Subscribe',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 25,
                        ),
                      ),
                    alignment: Alignment.bottomCenter,),)
                : Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        onTap: () {},
                        child: CircleAvatar(
                          child: Icon(
                            FontAwesomeIcons.facebook,
                            color: ten,
                            size: 30,
                          ),
                          radius: 25,
                          backgroundColor: ninty,
                        ),
                      ),
                      InkWell(
                        onTap: () {},
                        child: CircleAvatar(
                          child: Icon(
                            FontAwesomeIcons.linkedinIn,
                            color: ten,
                            size: 30,
                          ),
                          backgroundColor: ninty,
                          radius: 25,
                        ),
                      ),
                      InkWell(
                        onTap: () {},
                        child: CircleAvatar(
                          child: Icon(
                            FontAwesomeIcons.twitter,
                            color: ten,
                            size: 30,
                          ),
                          backgroundColor: ninty,
                          radius: 25,
                        ),
                      ),
                    ],
                  ),
          )
        ],
      ),
    );
  }
}
