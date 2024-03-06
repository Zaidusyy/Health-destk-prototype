import 'package:cogniex/Constants.dart';
import 'package:flutter/material.dart';

class Subscribe extends StatelessWidget {
  const Subscribe({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ninty,
        centerTitle: true,
        title: Text(
          'Our Subscription',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      backgroundColor: ninty,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,

          children: [
            AboutDoctor(pricingtext: 'Free',widthInfinity: true,image: 'blog-1.png', name: 'One month Free trial', profile: 'Curabitur sagittis libero tincidunt tempor finibus. Mauris at dignissim ligula, nec tristique orci.'),
            AboutDoctor(pricingtext: '\$5 Monthly',widthInfinity: true,image: 'blog-2.png', name: '5 dollars monthly', profile: 'Curabitur sagittis libero tincidunt tempor finibus. Mauris at dignissim ligula, nec tristique orci.'),
            AboutDoctor(pricingtext: '\$50 Annually',widthInfinity: true,image: 'blog-3.png', name: '50 dollars Annualy', profile: 'Curabitur sagittis libero tincidunt tempor finibus. Mauris at dignissim ligula, nec tristique orci.'),
        ],
        ),
      ),
    );
  }
}
