import 'dart:math';

import 'package:cogniex/Constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Calculator extends StatefulWidget {
  const Calculator({super.key});

  @override
  State<Calculator> createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  var resultcolor = Colors.transparent, result='';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ninty,
      body: Column(
        children: [
          Expanded(
          flex: 1,
          child: Container(
            padding: EdgeInsets.all(5),
            margin: EdgeInsets.only(top: 20,left: 50,right: 50,bottom: 20),
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: resultcolor,
            ),
            child: Center(child: Text(result.toString(),style: TextStyle(fontSize: 20),)),
          )),
          Text('Result Based on your profile data',style: TextStyle(color: Colors.indigo.shade300),),
          Expanded(
            flex: 3,
            child: GridView.count(
              padding: EdgeInsets.all(35),
              crossAxisCount: 2,
              children: [
                VerticalmenuContainer(
                  name: 'BMI',
                  icon: Icons.calculate_outlined,
                  image: 'hsfkjdf',
                  bcolor: Colors.indigo.shade100,
                  ontap: () {
                    calculate('BMI');
                    setState(() {});
                  },
                ),
                VerticalmenuContainer(
                  name: 'BMR',
                  icon: Icons.calculate_outlined,
                  image: 'hsfkjdf',
                  bcolor: Colors.indigo.shade100,
                  ontap: () {
                    calculate('BMR');
                    setState(() {});
                  },
                ),
                VerticalmenuContainer(
                  name: 'Ideal Weight',
                  icon: Icons.calculate_outlined,
                  image: 'hsfkjdf',
                  bcolor: Colors.indigo.shade100,
                  ontap: () {
                    calculate('Ideal Weight');
                    setState(() {});
                  },
                ),
                VerticalmenuContainer(
                  name: 'Healthy Weight',
                  icon: Icons.calculate_outlined,
                  image: 'hsfkjdf',
                  bcolor: Colors.indigo.shade100,
                  ontap: () {
                    calculate('Healthy Weight');
                    setState(() {});
                  },
                ),
                VerticalmenuContainer(
                  name: 'BMS',
                  icon: Icons.calculate_outlined,
                  image: 'hsfkjdf',
                  bcolor: Colors.indigo.shade100,
                  ontap: () {
                    calculate('BMS');
                    setState(() {});
                  },
                ),
                VerticalmenuContainer(
                  name: 'Body Composition',
                  icon: Icons.calculate_outlined,
                  image: 'hsfkjdf',
                  bcolor: Colors.indigo.shade100,
                  ontap: () {
                    calculate('Body Composition');
                    setState(() {});
                  },
                ),
                // VerticalmenuContainer(name: 'Physique',icon: Icons.calculate_outlined,image: 'hsfkjdf',bcolor: Colors.indigo.shade100,),
              ],
            ),
          ),

        ],
      ),
    );
  }

  calculate(String name) {
    double weight = 100, height = 6.4,ans=0;
    if (name == 'BMI') {
      ans = (weight / (height * height));
      ans=(name=='BMS')?17:ans;
      result=ans.toInt().toString();

      if(ans<=18.4){
        result+=' UnderWeight';
        resultcolor=Colors.amber.shade200;
      }
      else if(ans<=24.9){
        result+=' Normal';
        resultcolor=Colors.green.shade200;
      }
      else if(ans<=39.9){
        result+=' Overweight';
        resultcolor=Colors.yellow.shade400;
      }
      else{
        result+=' Obese';
        resultcolor=Colors.red.shade400;
      }
    }
    else if(name=='BMR'){
      ans=80;
      result=ans.toString()+' Units';
      resultcolor=Colors.yellow.shade200;
    }
    else if(name=='Body Composition'){
      ans=50;
      result=ans.toString()+' Units';
      resultcolor=Colors.green.shade200;
    }
    else if(name=='Ideal Weight'){
      ans=75;
      result=ans.toString()+' Units';
      resultcolor=Colors.amber.shade200;
    }
    else{
      ans=62;
      result=ans.toString()+' Units';
      resultcolor=Colors.orange.shade200;
    }
   //Implementation of remaining part

  }
}
