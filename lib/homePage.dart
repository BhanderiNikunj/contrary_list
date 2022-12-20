import 'package:contrary_list/ContraryName.dart';
import 'package:contrary_list/ceoList.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          backgroundColor: Colors.black,
          body: Expanded(
            child: Column(
              children: [
                InkWell(
                  onTap: () {
                    setState(() {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => Contrary(),));
                    });
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(top: 150),
                    child: Expanded(
                      child: Container(
                        height: 50,
                        width: 100,
                        decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        alignment: Alignment.center,
                        child: Text("Contrary"),
                      ),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    setState(() {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => Ceo(),));
                    });
                  },
                  child: Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(top: 50),
                      child: Container(
                        height: 50,
                        width: 100,
                        decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        alignment: Alignment.center,
                        child: Text("CEO"),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        )
    );
  }
}
