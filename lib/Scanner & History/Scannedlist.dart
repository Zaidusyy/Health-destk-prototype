import 'package:cogniex/Constants.dart';
import 'package:cogniex/Scanner%20&%20History/Data.dart';
import 'package:cogniex/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';


class ScannedList extends StatefulWidget {
  const ScannedList({super.key});

  @override
  State<ScannedList> createState() => _ScannedListState();
}

class _ScannedListState extends State<ScannedList> {
  String getResult="";

  List<ExpData> dataList = Explist().getData();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: ninty,
          actions: [
            Builder(builder: (context) {
              return IconButton(
                onPressed: () {
                    scanQRCode();
                    setState(() {
                    });
                },
                icon: Icon(
                  Icons.qr_code_scanner_outlined,
                  size: 35,
                ),
                splashColor: Colors.transparent,
              );
            }),
          ],
        ),
        backgroundColor: ninty,
        body: ListView.builder(
            itemCount: list.length,
            itemBuilder: (context, index) {
              return Container(
                //height: 100,
                margin:
                EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 10),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    border:
                    Border.all(color: Colors.indigo.shade200, width: 2)),
                child: ListTile(
                  leading: InkWell(onTap: (){
                    setState(() {
                          print(list[index].name);
                    });
                  //  print(dataList[index].toConcatenatedString());
                  },
                    child: Image(
                      image: NetworkImage(list[index].image),
                    ),
                  ),
                  title: Text(
                    list[index].name,
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                  subtitle:
                  Text('${list[index].description}\n'),
                  trailing: Text(
                    list[index].date,
                    style: TextStyle(color: Colors.red,fontWeight: FontWeight.bold),
                  ),
                ),
              );
            }));
  }
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
       // list.clear();
        //list.addAll(dataList.getRange(0, 1));
        list.add(temp);
      }
    });
  }
}



//
// ListTile(
// leading: Image(
// image: NetworkImage(
// 'https://www.shutterstock.com/image-photo/tablets-strip-over-white-background-260nw-488253436.jpg'),
// ),
// title: Text(
// 'Medicine Name ',
// style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
// ),
// subtitle:
// Text('medince sfdf sfsfsfo sfkerie jhsmggfgi asfiggm\n'),
// trailing: Text(
// DateTime.now().toString().split(' ')[0],
// style: TextStyle(color: Colors.red),
// ),
// ),