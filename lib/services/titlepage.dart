import 'package:flutter/material.dart';

class TitlePage extends StatefulWidget {
  const TitlePage({Key? key}) : super(key: key);

  @override
  State<TitlePage> createState() => _TitlePageState();
}

class _TitlePageState extends State<TitlePage> {
  bool? isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal.shade900,
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: const Icon(
            Icons.arrow_back_ios_rounded,
            size: 18,
            color: Colors.white,
          ),
        ),
        toolbarHeight: 80,
        title: Text(
          "     Service Details",
          textAlign: TextAlign.right,
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            Expanded(
              child: Row(
                children: [
                  Expanded(
                      flex: 5,
                      child: SingleChildScrollView(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              padding: EdgeInsets.all(8.0),
                              child: Text(
                                " Your Services",
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.all(15.0),
                              child: Text(
                                "Kitchen Cleaning",
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.bold),
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.all(10.0),
                              child: Text(
                                "Rs. 1,499 ",
                                textAlign: TextAlign.right,
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.red),
                              ),
                            ),
                            Container(
                              width: 140,
                              child: Row(
                                children: [
                                  Checkbox(
                                    value: isChecked,
                                    onChanged: (newBool) {
                                      setState(() {
                                        isChecked = newBool;
                                      });
                                    },
                                  ),
                                  Text(
                                    "Check Me",
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      )),
                  Expanded(
                    flex: 6,
                    child: Container(
                      height: 160,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('assets/images/kitchen.jpg'),
                            fit: BoxFit.cover,
                          ),
                          borderRadius: BorderRadius.all(Radius.circular(5.0))),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(0),
                child: SizedBox(
                  height: 10,
                  child: ListView.builder(
                      itemCount: 3,
                      itemBuilder: (BuildContext context, int index) {
                        return Card(
                          child: ListTile(
                            leading: Icon(
                              Icons.check,
                              color: Colors.black,
                              size: 25,
                            ),
                            title: Text(
                              "Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
                              style: TextStyle(
                                  fontSize: 13.8, fontWeight: FontWeight.bold),
                            ),
                          ),
                        );
                      }),
                ),
              ),
            ),
            ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.teal.shade900,
                    minimumSize: Size(350, 50)),
                child: Text("Accept",
                    style: TextStyle(fontSize: 20, color: Colors.white))),
          ],
        ),
      ),
    );
  }
}
