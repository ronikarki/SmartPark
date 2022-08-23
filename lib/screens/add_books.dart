import 'package:flutter/material.dart';
import 'package:flutterapplication/screens/components/added.dart';

class AddPage extends StatefulWidget {
  const AddPage({Key? key}) : super(key: key);

  @override
  _AddPageState createState() => _AddPageState();
}

class _AddPageState extends State<AddPage> {
  TextEditingController bookname = TextEditingController();
  TextEditingController publishdate = TextEditingController();
  TextEditingController bookdetails = TextEditingController();
  TextEditingController genre = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomLeft,
                  colors: [
                Color(0xFF8A2387),
                Color(0xFFE94057),
                Color(0xFFF27121),
              ])),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 30,
              ),
              Container(
                  height: 150,
                  width: 150,
                  child: Image.asset("images/car.png")),
              SizedBox(
                height: 15,
              ),
              Text("Smart Park",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  )),
              SizedBox(
                height: 30,
              ),
              Container(
                height: 500,
                width: 325,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10)),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: 30,
                      ),
                      Container(
                        width: 250,
                        child: TextField(
                          controller: bookname,
                          decoration: InputDecoration(
                            labelText: "Location",
                          ),
                        ),
                      ),
                      Container(
                        width: 250,
                        child: TextField(
                          controller: publishdate,
                          decoration: InputDecoration(
                            labelText: "Distance",
                          ),
                        ),
                      ),
                      Container(
                        width: 250,
                        child: TextField(
                          controller: bookdetails,
                          decoration: InputDecoration(
                            labelText: "Parking Details",
                          ),
                        ),
                      ),
                      Container(
                        width: 250,
                        child: TextField(
                          controller: genre,
                          decoration: InputDecoration(
                            labelText: "Parking Cost",
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: GestureDetector(
                          child: Container(
                            alignment: Alignment.center,
                            width: 200,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                gradient: LinearGradient(
                                    begin: Alignment.centerLeft,
                                    end: Alignment.centerRight,
                                    colors: [
                                      Color(0xFF8A2387),
                                      Color(0xFFE94057),
                                      Color(0xFFF27121),
                                    ])),
                            child: Padding(
                              padding: EdgeInsets.all(3.0),
                              child: OutlinedButton(
                                child: Text(
                                  "Add Parking Spot",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                                onPressed: () {
                                  bookname.clear();
                                  publishdate.clear();
                                  bookdetails.clear();
                                  genre.clear();
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => Added(),
                                    ),
                                  );
                                },
                              ),
                            ),
                          ),
                        ),
                      ),
                    ]),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
