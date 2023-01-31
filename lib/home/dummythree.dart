import 'package:flutter/material.dart';

class DummyThree extends StatefulWidget {
  const DummyThree({Key? key}) : super(key: key);

  @override
  State<DummyThree> createState() => _DummyThreeState();
}

class _DummyThreeState extends State<DummyThree> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("History"),
      ),
    );
  }
}
