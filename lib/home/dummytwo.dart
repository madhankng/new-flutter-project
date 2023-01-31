import 'package:flutter/material.dart';

class DummyTwo extends StatefulWidget {
  const DummyTwo({Key? key}) : super(key: key);

  @override
  State<DummyTwo> createState() => _DummyTwoState();
}

class _DummyTwoState extends State<DummyTwo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Customer"),
      ),
    );
  }
}
