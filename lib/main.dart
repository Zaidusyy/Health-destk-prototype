import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:cogniex/Calculator.dart';
import 'package:cogniex/Contactus.dart';
import 'package:cogniex/Home.dart';
import 'package:cogniex/Scanner%20&%20History/Scannedlist.dart';
import 'package:cogniex/Slider/SliderScreen.dart';
import 'package:cogniex/Subscribe.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';
import 'Constants.dart';
import 'package:cogniex/MyPlan.dart';
import 'package:cogniex/AboutUs.dart';

import 'Scanner & History/Data.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});



  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var getResult='';
  int stateindex = 0;

  List<Widget> Screen = [Home(), Calculator(), MyPlan(), SliderScreen()];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: (stateindex == 0)
              ? Row(
                  children: [
                    Text('STAY '),
                    AnimatedTextKit(repeatForever: true, animatedTexts: [
                      RotateAnimatedText(
                        'HEALTHY',
                        duration: Duration(seconds: 3),
                      ),
                      RotateAnimatedText('FIT', duration: Duration(seconds: 3)),
                      RotateAnimatedText('ENERGIZED',
                          duration: Duration(seconds: 3)),
                      RotateAnimatedText('ACTIVE',
                          duration: Duration(seconds: 3)),
                    ]),
                  ],
                )
              : null,
          actions: [
            Builder(
              builder: (context) {
                return IconButton(
                  onPressed: () {
                     // list.clear();
                    //  list.addAll(dataList);

                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ScannedList()),
                    );
                  },
                  icon: Icon(
                    Icons.list_alt,
                    size: 30,
                  ),
                  splashColor: Colors.transparent,
                );
              }
            ),

            Builder(
              builder: (context) {
                return IconButton(
                  onPressed: () {
                    scanQRCode();
                  },
                  icon: Icon(
                    Icons.qr_code_scanner_outlined,
                    size: 35,
                  ),
                  splashColor: Colors.transparent,
                );
              }
            ),
          ],
          backgroundColor: ninty,
          iconTheme: IconThemeData(color: ten),
        ),
        drawer: Drawer(
          backgroundColor: ten,
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              Center(
                child: DrawerHeader(
                  padding: EdgeInsets.zero,
                  decoration: BoxDecoration(color: ninty),
                  child: Container(
                    padding: EdgeInsets.all(15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          flex: 1,
                          child: CircleAvatar(
                            radius: 50,
                            backgroundImage: NetworkImage(
                                'https://media.licdn.com/dms/image/D5603AQF_DfqMNKxPow/profile-displayphoto-shrink_800_800/0/1697396607338?e=2147483647&v=beta&t=yx-h-nZ3Uvv7U1ELYwugJ648_xxugAAKdkzn3-Kg1Sg'),
                          ),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Expanded(
                          flex: 2,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                height: 20,
                              ),
                              Text(
                                'Zaid',
                                style: TextStyle(color: ten, fontSize: 20),
                              ),
                              Text(
                                '9920619416',
                                style: TextStyle(color: ten, fontSize: 15),
                              ),
                              Text(
                                'Zaidsayyed@gmail.com',
                                style: TextStyle(color: ten, fontSize: 15),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Drawermenue(
                  name: 'HOME', icon: Icons.home_outlined, navigate: MyApp()),
              Drawermenue(
                name: 'DIAGNOSE',
                icon: Icons.medication_liquid_sharp,
              ),
              Drawermenue(
                name: 'SUBSCRIBE',
                icon: Icons.workspace_premium_outlined,
                navigate: Subscribe(),
              ),
              Drawermenue(
                name: 'ABOUT US',
                icon: Icons.help_center_outlined,
                navigate: AboutUs(),
              ),
              Drawermenue(
                name: 'CONTACT',
                icon: Icons.quick_contacts_dialer_outlined,
                navigate: Contactus(),
              ),
            ],
          ),
        ),
        backgroundColor: ninty,
        body: Screen[stateindex],
        bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.home_outlined), label: 'Home'),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.calculate_outlined,
                ),
                label: 'Calculator'),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.event_note_outlined,
                ),
                label: 'Premium Plan'),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.more_horiz_outlined,
                ),
                label: 'More'),
          ],
          selectedItemColor: ten,
          unselectedItemColor: CupertinoColors.inactiveGray,
          backgroundColor: ninty,
          showUnselectedLabels: true,
          currentIndex: stateindex,
          onTap: (index) {
            setState(() {
              stateindex = index;
            });
          },
        ),
      ),
    );
  }
  List<ExpData> dataList = Explist().getData();
  void scanQRCode() async {
    try {
      final qrCode = await FlutterBarcodeScanner.scanBarcode(
          '#ff6666', 'Cancel', true, ScanMode.QR);

      if (!mounted || qrCode=='-1') return;

      setState(() {
        getResult = qrCode;
      });
      print("QRCode_Result:--");
      print(qrCode);
    } on PlatformException {
      getResult = 'Failed to scan QR Code.';
    }

    setState(() {
      ExpData temp=ExpData().setDataFromConcatenatedString(getResult);

      bool isDuplicate = list.any((data) => data.name == temp.name);
      if (!isDuplicate) {
        dataList.add(temp);
      //  list.clear();
     //   list.addAll(dataList);
          list.add(temp);
      }


    });
  }


}
