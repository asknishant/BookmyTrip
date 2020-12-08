import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: Column(
        children: [
          SizedBox(
            height: 100,
          ),
          Expanded(
            flex: 2,
            child: Padding(
              padding: const EdgeInsets.only(left: 18, right: 18, top: 0),
              child: Row(
                children: [
                  Text('Hi,\nWelcome Back',
                      textAlign: TextAlign.left,
                      style: GoogleFonts.inder(
                        fontSize: 30,
                        color: Colors.black87,
                      )),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Padding(
              padding:
                  const EdgeInsets.only(left: 8, right: 8, top: 8, bottom: 8),
              child: new TextFormField(
                  decoration: new InputDecoration(
                    labelText: "Email",
                    border: new OutlineInputBorder(
                      borderRadius: new BorderRadius.circular(18.0),
                      borderSide: new BorderSide(color: Colors.red),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25.0),
                      borderSide: BorderSide(
                        color: Colors.blue,
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25.0),
                      borderSide: BorderSide(
                        color: Colors.blue,
                        width: 2.0,
                      ),
                    ),
                  ),
                  validator: (val) {
                    if (val.length == 0) {
                      return "Email cannot be empty";
                    } else {
                      return null;
                    }
                  },
                  keyboardType: TextInputType.emailAddress,
                  style: GoogleFonts.inder(
                    fontSize: 20,
                    color: Colors.black87,
                  )),
            ),
            //fillColor: Colors.green
          ),
          Expanded(
            child: Padding(
              padding:
                  const EdgeInsets.only(left: 8, right: 8, top: 8, bottom: 8),
              child: new TextFormField(
                  decoration: new InputDecoration(
                    labelText: "Password",
                    border: new OutlineInputBorder(
                      borderRadius: new BorderRadius.circular(18.0),
                      borderSide: new BorderSide(color: Colors.red),
                    ),
                    fillColor: Colors.green,
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25.0),
                      borderSide: BorderSide(
                        color: Colors.blue,
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25.0),
                      borderSide: BorderSide(
                        color: Colors.blue,
                        width: 2.0,
                      ),
                    ),
                  ),
                  validator: (val) {
                    if (val.length == 0) {
                      return "Email cannot be empty";
                    } else {
                      return null;
                    }
                  },
                  keyboardType: TextInputType.emailAddress,
                  style: GoogleFonts.inder(
                    fontSize: 20,
                    color: Colors.black87,
                  )),
            ),
            //fillColor: Colors.green
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: new InkWell(
              onTap: () => print('hello'),
              child: new Container(
                width: 370.0,
                height: 70.0,
                decoration: new BoxDecoration(
                  color: Colors.blueAccent,
                  border: new Border.all(color: Colors.white, width: 2.0),
                  borderRadius: new BorderRadius.circular(15.0),
                ),
                child: new Center(
                  child: new Text(
                    'Login',
                    style: new TextStyle(fontSize: 22.0, color: Colors.white),
                  ),
                ),
              ),
            ),
          ),
          InkWell(
            onTap: () {},
            child: Text('Forgot password?',
                style: GoogleFonts.inder(
                  fontSize: 15,
                  color: Colors.black87,
                )),
          ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(
                    onTap: () => print('hello'),
                    child: Container(
                      decoration: BoxDecoration(
                          image: DecorationImage(
                            fit: BoxFit.fill,
                            image: AssetImage(
                              'assets/images/fb.jpg',
                            ),
                          ),
                          // color: Colors.amber,
                          borderRadius: BorderRadius.all(Radius.circular(20))),
                      width: MediaQuery.of(context).size.width * 0.18,
                      height: MediaQuery.of(context).size.height * 0.1,
                      // margin: EdgeInsets.symmetric(horizontal: .350),
                    )),
                InkWell(
                    onTap: () => print('hello'),
                    child: Container(
                      decoration: BoxDecoration(
                          image: DecorationImage(
                            fit: BoxFit.fill,
                            image: AssetImage(
                              'assets/images/google.png',
                            ),
                          ),
                          // color: Colors.amber,
                          borderRadius: BorderRadius.all(Radius.circular(20))),
                      width: MediaQuery.of(context).size.width * 0.18,
                      height: MediaQuery.of(context).size.height * 0.070,
                      // margin: EdgeInsets.symmetric(horizontal: .350),
                    )),
              ],
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.all(25.0),
            child: InkWell(
              onTap: () {},
              child: Text('Don\'t have an account? SIGN UP',
                  style: GoogleFonts.inder(
                    fontSize: 15,
                    color: Colors.black87,
                  )),
            ),
          ),
        ],
      ),
    );
  }
}
