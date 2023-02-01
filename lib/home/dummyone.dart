import 'dart:io';

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import 'package:url_launcher/url_launcher_string.dart';

class DummyOne extends StatefulWidget {
  const DummyOne({Key? key}) : super(key: key);
  final number = '+238192019121';

  @override
  State<DummyOne> createState() => _DummyOneState();
}

class _DummyOneState extends State<DummyOne> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            title: const Text(
              "My Bookings",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
            toolbarHeight: 80,
            backgroundColor: Colors.teal.shade900,
            actions: [
              IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.account_box_rounded)),
            ],
            bottom: TabBar(
              indicatorColor: Colors.white,
              tabs: [
                Text(
                  'ON GOING',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
                Text(
                  'COMPLETED',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              ],
            ),
          ),
          body: Column(
            children: [
              Expanded(
                  child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      padding: const EdgeInsets.all(20.0),
                      child: const Text(
                        "Let's Search for the Leads",
                        style: TextStyle(fontSize: 20, color: Colors.black),
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.fromLTRB(30, 10, 30, 10),
                      child: TextFormField(
                        decoration: const InputDecoration(
                          hintText: "Search",
                          hintStyle: TextStyle(color: Colors.black26),
                        ),
                      ),
                    ),
                    Container(
                        padding: EdgeInsets.all(15.0),
                        height: 325,
                        child: SizedBox(
                          height: 150,
                          child: ListView.builder(
                              itemCount: 1,
                              itemBuilder: (BuildContext context, int index) {
                                return Card(
                                    elevation: 3.0,
                                    color: Colors.white,
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(3.0)),
                                    child: Padding(
                                      padding: EdgeInsets.all(10.0),
                                      child: SizedBox(
                                        height: 112.0,
                                        width: double.infinity,
                                        child: Row(
                                          children: [
                                            Expanded(
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    ". Rajesh Kannan",
                                                    style: TextStyle(
                                                      fontSize: 21,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    height: 22,
                                                  ),
                                                  Text(
                                                    "  Loren Ipsum is simply dummy text",
                                                    style: TextStyle(
                                                        fontSize: 12,
                                                        fontWeight:
                                                            FontWeight.normal,
                                                        color: Colors.black26),
                                                  ),
                                                  SizedBox(
                                                    height: 5,
                                                  ),
                                                  RichText(
                                                    text: TextSpan(
                                                        text: '.',
                                                        style: TextStyle(
                                                            fontSize: 30,
                                                            color: Colors
                                                                .red.shade100,
                                                            fontWeight:
                                                                FontWeight
                                                                    .bold),
                                                        children: [
                                                          TextSpan(
                                                            text:
                                                                ' On process ',
                                                            style: TextStyle(
                                                                fontSize: 13,
                                                                color:
                                                                    Colors.red,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold),
                                                          ),
                                                          TextSpan(
                                                            text: '.',
                                                            style: TextStyle(
                                                                fontSize: 30,
                                                                color: Colors
                                                                    .red
                                                                    .shade100,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold),
                                                          ),
                                                          TextSpan(
                                                            text:
                                                                ' RS.5,000-10.000',
                                                            style: TextStyle(
                                                                fontSize: 12,
                                                                color: Colors
                                                                    .black38),
                                                          ),
                                                        ]),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            IntrinsicHeight(
                                              child: Row(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Column(
                                                      children: [
                                                        IconButton(
                                                          onPressed: () {
                                                            launchUrlString(
                                                                'tel:+238192019121');
                                                          },
                                                          icon: const Icon(
                                                            Icons.call,
                                                            size: 35,
                                                          ),
                                                        ),
                                                        Text(
                                                          "CALL",
                                                          style: TextStyle(
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold),
                                                        ),
                                                      ],
                                                    ),
                                                    VerticalDivider(
                                                      color: Colors.black45,
                                                      width: 03,
                                                      thickness: 0.5,
                                                    ),
                                                    Column(
                                                      children: [
                                                        IconButton(
                                                          onPressed: () {
                                                            reachUs();
                                                          },
                                                          icon: const Icon(
                                                            Icons.whatsapp,
                                                            color: Colors.black,
                                                            size: 35,
                                                          ),
                                                        ),
                                                        Text(
                                                          "CHAT",
                                                          style: TextStyle(
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold),
                                                        ),
                                                      ],
                                                    )
                                                  ]),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ));
                              }),
                        )),
                  ],
                ),
              )),
            ],
          ),
        ));
  }

  reachUs() async {
    var contact = "9445108870";
    var android_url = "whatsapp://send?phone=" +
        contact +
        "&text=Hi, I want to learn flutter in Coderzbot Innovation";
    await launchUrlString(android_url);
  }
}
