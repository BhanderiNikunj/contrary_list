import 'package:flutter/material.dart';

class Contrary extends StatefulWidget {
  const Contrary({Key? key}) : super(key: key);

  @override
  State<Contrary> createState() => _ContraryState();
}

class _ContraryState extends State<Contrary> {
  List l1=[
    "India","Australia","Brazil","Canada","Japan","Singapore","Denmark","United Kingdom","Italy","New Zealand","Spain","Netherlands","South Africa","Belize","Indonesia","Switzerland","China","Turkey","Germany","France ",
  ];
  List Capital=[
    "Delhi","Canberra","Brasรญlia","Ottawa","Tokyo","Singapore","Copenhagen","London","Rome","Wellington","Madrid","Amsterdam","Cape Town","Belmopanz","Jakarta","Bern","Beijing","Ankara","Berlin","Paris",
  ];
  List Icon=[
    "๐ฎ๐ณ","๐ฆ๐บ","๐ง๐ท","๐จ๐ฆ","๐ฏ๐ต","๐ธ๐ฌ","๐ฉ๐ฐ","๐ฌ๐ง","๐ฎ๐น","๐ณ๐ฟ","๐ช๐ธ","๐ณ๐ฑ","๐ฟ๐ฆ","๐ง๐ฟ","๐ฎ๐ฉ","๐จ๐ญ","๐จ๐ณ","๐น๐ท","๐ฉ๐ช","๐ซ๐ท",
  ];
  List c1=[
    Colors.purple.shade300,
    Colors.blue.shade300,
    Colors.blue.shade300,
    Colors.green.shade300,
    Colors.yellow.shade300,
    Colors.orange.shade300,
    Colors.red.shade300,
    Colors.purple.shade300,
    Colors.blue.shade300,
    Colors.blue.shade300,
    Colors.green.shade300,
    Colors.yellow.shade300,
    Colors.orange.shade300,
    Colors.red.shade300,
    Colors.purple.shade300,
    Colors.blue.shade300,
    Colors.blue.shade300,
    Colors.green.shade300,
    Colors.yellow.shade300,
    Colors.orange.shade300,
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: Text("Contrary"),
            centerTitle: true,
          ),
          body: SingleChildScrollView(
            child: Column(
              children: l1.asMap().entries.map((e) => contrary(l1[e.key], Capital[e.key],Icon[e.key],c1[e.key])).toList(),
            ),
          ),
        )
    );
  }
  Widget contrary(String name,String Capital,dynamic Icon,Color c1){
    return Column(
      children: [
        Container(
          margin: EdgeInsets.all(5),
          height: 100,
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: c1,
          ),
          child: Expanded(
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Row(
                children: [
                  Text(
                    "$Icon",
                    style: TextStyle(fontSize: 30),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Text(
                      "Contrary name := $name\nCapital name := $Capital",
                      style: TextStyle(fontSize: 15),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}