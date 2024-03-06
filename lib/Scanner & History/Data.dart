class ExpData {
  String date = "";
  String name = "";
  String image = "";
  String description = "";

  ExpData({this.date="",this.name="", this.image = "", this.description = ""});

  // Getter methods
  String getDate() {
    return date;
  }

  String getName() {
    return name;
  }

  String getImage() {
    return image;
  }

  String getDescription() {
    return description;
  }

  String toConcatenatedString() {

    return '$date|$name|$image|$description';

  }

  setDataFromConcatenatedString(String concatenatedString) {
    List<String> parts = concatenatedString.split('|');
    if (parts.length >= 4) {
      date = parts[0];
      name = parts[1];
      image = parts[2];
      description = parts[3];
    }
    return this;
  }
}
ExpData data1 = ExpData(date: '20 Dec 2024', name: 'Paracetamol', image: 'https://5.imimg.com/data5/SELLER/Default/2022/8/CW/BB/DS/129887935/paracetamol-tablets-500-mg-500x500.jpeg', description: 'treat mild to moderate pain');
ExpData data2 = ExpData(date: '15 Jan 2025', name: 'Aspirin', image: 'https://5.imimg.com/data5/SELLER/Default/2023/7/330506870/UM/GZ/QO/135658020/aspirin-dispersible-tablets.jpg', description: 'Pain reliever');
class Explist {
  late List<ExpData> data; // Declare data list as late

  Explist() {
    data = [];
    data.add(data1);
    data.add(data2);
 //   list.addAll(data);

  }

  // Getter method for data list
  List<ExpData> getData() {
    return data;
  }
  setlist(){
    list.clear();
    list.addAll(data);
  }
}
final List<ExpData> list=[data1,data2];
