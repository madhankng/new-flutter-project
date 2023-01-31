import 'package:flutter/material.dart';

class DummyOne extends StatefulWidget {
  const DummyOne({Key? key}) : super(key: key);

  @override
  State<DummyOne> createState() => _DummyOneState();
}

class _DummyOneState extends State<DummyOne> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("New Order"),
      ),
    );
  }
}
