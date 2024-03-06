import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'Constants.dart';

class MyPlan extends StatelessWidget {
  const MyPlan({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ninty,
      body: ListView(
        children: [
          Text(
            'Unlock a healthier tomorrow with our health app plan',
            style: TextStyle(fontSize: 20, color: ten),
            textAlign: TextAlign.center,
          ),
          PlansTile(
              leading: 'service-icon-1.png',
              discription:
                  'Aenean eleifend turpis tellus, nec laoreet metus elementum ac.',
              heading: 'PCOS'),
          PlansTile(
              leading: 'service-icon-2.png',
              discription:
                  'Aenean eleifend turpis tellus, nec laoreet metus elementum ac.',
              heading: 'Diabetes'),
          PlansTile(
              leading: 'service-icon-3.png',
              discription:
                  'Aenean eleifend turpis tellus, nec laoreet metus elementum ac.',
              heading: 'Malaria'),
          PlansTile(
              leading: 'service-icon-4.png',
              discription:
                  'Aenean eleifend turpis tellus, nec laoreet metus elementum ac.',
              heading: 'Cancer'),
          PlansTile(
              leading: 'service-icon-5.png',
              discription:
                  'Aenean eleifend turpis tellus, nec laoreet metus elementum ac.',
              heading: 'Jaundice'),
          PlansTile(
              leading: 'service-icon-6.png',
              discription:
                  'Aenean eleifend turpis tellus, nec laoreet metus elementum ac.',
              heading: 'HairFall'),
        ],
      ),
    );
  }
}
