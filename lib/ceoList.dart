import 'package:flutter/material.dart';

class Ceo extends StatefulWidget {
  const Ceo({Key? key}) : super(key: key);

  @override
  State<Ceo> createState() => _CeoState();
}

class _CeoState extends State<Ceo> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          backgroundColor: Colors.blue,
        ),
    );
  }
}
