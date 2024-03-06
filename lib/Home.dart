import 'package:cogniex/Slider/SliderScreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'Constants.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 10,
        ),
        SliderScreen(),
        Padding(
          padding: const EdgeInsets.all(15),
          child: Text('Diabetes Plan',style: TextStyle(fontWeight: FontWeight.bold,color: ten,fontSize: 20),),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              VerticalmenuContainer(image: 'https://content.health.harvard.edu/wp-content/uploads/2023/04/c92020e0-e209-403d-a334-2b544b03a9d4.jpg', name: 'Diet',ontap: (){},),
              VerticalmenuContainer(image: 'https://www.grxstatic.com/4f3rgqwzdznj/4GYGdW1llGA2D8EXRi0KAl/9cd2c9d9b88a8c5502fa9d3bea20dd5a/close_up_glucose_meter_and_fitness-523703958.jpg?format=pjpg&auto=webp&width=704', name: 'Exercise',ontap: (){},),
              VerticalmenuContainer(image: 'https://wp02-media.cdn.ihealthspot.com/wp-content/uploads/sites/494/2023/07/istockphoto-1348095017-612x612-1.jpg', name: 'Consult Doctor',ontap: (){},),
              VerticalmenuContainer(image: 'https://i0.wp.com/images-prod.healthline.com/hlcmsresource/images/News/4559-pills-1296x728-header.jpg?w=1155&h=1528', name: 'Medicine',ontap: (){},),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(15),
          child: Text('Cancer Plan',style: TextStyle(fontWeight: FontWeight.bold,color: ten,fontSize: 20),),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              VerticalmenuContainer(image: 'https://i0.wp.com/images-prod.healthline.com/hlcmsresource/images/AN_images/cancer-and-diet-1296x728-feature.jpg?w=1155&h=1528', name: 'Diet',ontap: (){},),
              VerticalmenuContainer(image: 'https://www.ucsfhealth.org/-/media/project/ucsf/ucsf-health/service/hero/cancer-exercise-counseling-2x.jpg', name: 'Exercise',ontap: (){},),
              VerticalmenuContainer(image: 'https://img.freepik.com/free-photo/young-woman-suffering-breast-cancer-talking-with-her-doctor_23-2148992311.jpg', name: 'Consult Doctor',ontap: (){},),
              VerticalmenuContainer(image: 'https://assets.weforum.org/article/image/4Hr3nye7pe9NysXvHfop-_FZfFyFSb9VwZ0QCfTfOwo.jpg', name: 'Medicine',ontap: (){},),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(15),
          child: Text('Blood Pressure Plan',style: TextStyle(fontWeight: FontWeight.bold,color: ten,fontSize: 20),),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              VerticalmenuContainer(image: 'https://content.health.harvard.edu/wp-content/uploads/2023/04/c92020e0-e209-403d-a334-2b544b03a9d4.jpg', name: 'Diet',ontap: (){},),
              VerticalmenuContainer(image: 'https://www.grxstatic.com/4f3rgqwzdznj/4GYGdW1llGA2D8EXRi0KAl/9cd2c9d9b88a8c5502fa9d3bea20dd5a/close_up_glucose_meter_and_fitness-523703958.jpg?format=pjpg&auto=webp&width=704', name: 'Exercise',ontap: (){}),
              VerticalmenuContainer(image: 'https://wp02-media.cdn.ihealthspot.com/wp-content/uploads/sites/494/2023/07/istockphoto-1348095017-612x612-1.jpg', name: 'Consult Doctor',ontap: (){}),
              VerticalmenuContainer(image: 'https://i0.wp.com/images-prod.healthline.com/hlcmsresource/images/News/4559-pills-1296x728-header.jpg?w=1155&h=1528', name: 'Medicine',ontap: (){}),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(15),
          child: Text('Our Champions',style: TextStyle(fontWeight: FontWeight.bold,color: ten,fontSize: 20),),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              VerticalmenuContainer(image: 'https://s.abcnews.com/images/GMA/221021_gma_vega5_hpMain_16x9_1600.jpg', name: 'Amelia',isbig: true,ontap: (){},),
              VerticalmenuContainer(image: 'https://i.pinimg.com/originals/c0/8e/a1/c08ea199ab270e631b90f02ba75a289f.jpg', name: 'Olivia',isbig: true,ontap: (){}),
              VerticalmenuContainer(image: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTTiOwB0Ry-RQBYo8_N62QaZU9e-rAYF35zkPlDekCLi2IfBOaKcqPsMTZ1cvALoDopH-k&usqp=CAU', name: 'Ronny',isbig: true,ontap: (){}),
              VerticalmenuContainer(image: 'https://s.abcnews.com/images/GMA/221021_gma_vega5_hpMain_16x9_1600.jpg', name: 'Amelia',isbig: true,ontap: (){}),
              VerticalmenuContainer(image: 'https://i.pinimg.com/originals/c0/8e/a1/c08ea199ab270e631b90f02ba75a289f.jpg', name: 'Olivia',isbig: true,ontap: (){}),
              VerticalmenuContainer(image: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTTiOwB0Ry-RQBYo8_N62QaZU9e-rAYF35zkPlDekCLi2IfBOaKcqPsMTZ1cvALoDopH-k&usqp=CAU', name: 'Ronny',isbig: true,ontap: (){}),

            ],
          ),
        ),
      ],
    ));
  }
}
