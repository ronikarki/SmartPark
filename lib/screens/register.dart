import 'package:flutter/material.dart';
import 'package:flutterapplication/http/http.dart';
import 'package:flutterapplication/main.dart';
import 'package:flutterapplication/models/usermodel.dart';
import 'package:motion_toast/motion_toast.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final regform = GlobalKey<FormState>();
  String username = '';
  String password = '';
  String phone = '';
  String address = '';

  Future<bool> registerUser(User u) {
    var res = HttpConnectUser().registerPost(u);

    return res;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Form(
          key: regform,
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
                  height: 480,
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
                        Text(
                          "Hello",
                          style: TextStyle(
                              fontSize: 35, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Please Register to Your Account",
                          style: TextStyle(fontSize: 15, color: Colors.grey),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                          width: 250,
                          child: TextFormField(
                            onSaved: (value) {
                              username = value!;
                            },
                            // controller: username,
                            decoration: InputDecoration(
                              labelText: "Username",
                            ),
                          ),
                        ),
                        Container(
                          width: 250,
                          child: TextFormField(
                            onSaved: (value) {
                              password = value!;
                            },
                            // controller: password,
                            decoration: InputDecoration(
                              labelText: "Password",
                            ),
                          ),
                        ),
                        Container(
                          width: 250,
                          child: TextFormField(
                            onSaved: (value) {
                              phone = value!;
                            },
                            decoration: InputDecoration(
                              labelText: "Phone",
                            ),
                          ),
                        ),
                        Container(
                          width: 250,
                          child: TextFormField(
                            onSaved: (value) {
                              address = value!;
                            },
                            decoration: InputDecoration(
                              labelText: "Vehical Plate Number",
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
                              width: 250,
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
                                padding: EdgeInsets.all(5.0),
                                child: OutlinedButton(
                                  child: Text(
                                    "Register",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  onPressed: () async {
                                    if (regform.currentState!.validate()) {
                                      regform.currentState!.save();
                                      User u = User(
                                        username: username,
                                        password: password,
                                        phone: phone,
                                        address: address,
                                      );

                                      bool isCreated = await registerUser(u);
                                      if (isCreated) {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    LoginPage()));
                                        MotionToast.success(
                                                title: Text("Success"),
                                                description: Text(""),
                                                width: 300)
                                            .show(context);
                                      } else {
                                        MotionToast.success(
                                                title: Text("Invalid"),
                                                description: Text(""),
                                                width: 300)
                                            .show(context);
                                      }
                                    }
                                  },
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                      ]),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
