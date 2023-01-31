import 'package:flutter/material.dart';
import 'package:taskoneui/home/widgets/searchbar.dart';
import 'dashboard.dart';

class FrontPage extends StatefulWidget {
  const FrontPage({Key? key}) : super(key: key);

  @override
  State<FrontPage> createState() => _FrontPageState();
}

class _FrontPageState extends State<FrontPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 80,
        title: const Text(
          'New Leads',
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.teal.shade900,
        actions: [
          IconButton(
              onPressed: () {}, icon: const Icon(Icons.account_box_rounded))
        ],
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
                  padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                  child: TextFormField(
                    decoration: const InputDecoration(
                      hintText: "Search",
                      hintStyle: TextStyle(color: Colors.black26),
                    ),
                  ),
                ),
                // SearchBar(),
                InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, '/titlepage');
                  },
                  child: SizedBox(
                    height: 500,
                    child: ListView.builder(
                        itemCount: 2,
                        itemBuilder: (BuildContext context, int index) {
                          return Card(
                            elevation: 5.0,
                            color: Colors.white,
                            child: Padding(
                              padding: const EdgeInsets.all(20.0),
                              child: SizedBox(
                                height: 70.0,
                                width: double.infinity,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: const [
                                    Text(
                                      ". Rajesh Kannan",
                                      style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Text(
                                      "Loren Ipsum is simply dummy text",
                                      style: TextStyle(
                                          fontSize: 10,
                                          fontWeight: FontWeight.normal,
                                          color: Colors.black38),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Text(
                                      ". 8.10 AM . Rs.5,000-10,000",
                                      style: TextStyle(
                                          fontSize: 10,
                                          fontWeight: FontWeight.normal,
                                          color: Colors.black38),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          );
                        }),
                  ),
                )
              ],
            ),
          ))
        ],
      ),
    );
  }
}
