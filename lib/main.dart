import 'package:flutter/material.dart';
import 'package:flutter/material.dart' as prefix0;
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'dart:ui';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Homework Flutter 04',
      home: LoginUI(),
    ),
  );
}

class LoginUI extends StatefulWidget {
  @override
  _LoginUIState createState() => _LoginUIState();
}

class _LoginUIState extends State<LoginUI> {
  @override
  Widget build(BuildContext context) {
    return Container(
      //or use scaffold
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
            'assets/images/bgmarket.jpg',
          ),
          fit: BoxFit.cover,
        ),
      ),
      child: BackdropFilter(
        filter: ImageFilter.blur(
          sigmaX: 2.0,
          sigmaY: 2.0,
        ),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          //body and bottomNavigationBar is Scaffold Property
          body: Center(
            child: SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Row(
                            children: <Widget>[
                              ClipOval(
                                child: Container(
                                  width: 20.0,
                                  height: 20.0,
                                  color: Color(0xFF052cdc),
                                ),
                              ),
                              SizedBox(
                                width: 8.0,
                              ),
                              ClipOval(
                                child: Container(
                                  width: 20.0,
                                  height: 20.0,
                                  color: Color(0xFF052cdc),
                                ),
                              ),
                            ],
                          ),
                          Text(
                            'ENJOYLIFE',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 44.0,
                            ),
                          ),
                          Row(
                            children: <Widget>[
                              Text(
                                'LOVE ME LOVE MARKET',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(
                                width: 8.0,
                              ),
                              ClipOval(
                                child: Container(
                                  width: 20.0,
                                  height: 20.0,
                                  color: Color(0xFF052cdc),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 48.0,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 32.0,
                    ),
                    child: TextField(
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                        prefixIcon: Icon(
                          Icons.mail,
                          color: Colors.white,
                        ),
                        hintText: 'Email',
                        hintStyle: TextStyle(
                          color: Colors.white,
                        ),
                        filled: true,
                        fillColor: Colors.white.withOpacity(0.5),
                        border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(30.0),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 12.0,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 32.0,
                    ),
                    child: TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                        prefixIcon: Icon(
                          Icons.lock,
                          color: Colors.white,
                        ),
                        hintText: 'Password',
                        hintStyle: TextStyle(
                          color: Colors.white,
                        ),
                        filled: true,
                        fillColor: Colors.white.withOpacity(0.5),
                        border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(30.0),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 12.0,
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Text(
                      'Forgot Your Password?',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16.0,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 32.0,
                  ),
                  //Button example : RaiseButton, MaterialButton,RawMaterialButton, FlatButton.
                  Container(
                    width: 150.0,
                    height: 48.0,
                    child: RaisedButton(
                      onPressed: () {},
                      child: Text(
                        'SIGN IN',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      color: Color(0xFF052cdc),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 32.0,
                  ),
                  Text(
                    'OR SIGN WITH SOCIAL ACCOUNT',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 15.0,
                    ),
                  ),
                  SizedBox(
                    height: 12.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      RawMaterialButton(
                        onPressed: () {},
                        child: Icon(
                          FontAwesomeIcons.facebookF,
                          color: Colors.white,
                        ),
                        shape: CircleBorder(
                          side: BorderSide(
                            width: 2.0,
                            color: Colors.white,
                          ),
                        ),
                        padding: EdgeInsets.all(
                          16.0,
                        ),
                      ),
                      RawMaterialButton(
                        onPressed: () {},
                        child: Icon(
                          FontAwesomeIcons.googlePlusG,
                          color: Colors.white,
                        ),
                        shape: CircleBorder(
                          side: BorderSide(
                            width: 2.0,
                            color: Colors.white,
                          ),
                        ),
                        padding: EdgeInsets.all(
                          16.0,
                        ),
                      ),
                      RawMaterialButton(
                        onPressed: () {},
                        child: Icon(
                          FontAwesomeIcons.twitter,
                          color: Colors.white,
                        ),
                        shape: CircleBorder(
                          side: BorderSide(
                            width: 2.0,
                            color: Colors.white,
                          ),
                        ),
                        padding: EdgeInsets.all(
                          16.0,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          bottomNavigationBar: BottomAppBar(
            color: Colors.black.withOpacity(0.2),
            child: Padding(
              padding: EdgeInsets.only(
                top: 12.0,
                bottom: 12.0,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'Do not have an account',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    width: 12.0,
                  ),
                  Text(
                    'Create Account',
                    style: TextStyle(
                      color: Colors.green,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ),

        ),
      ),
    );
  }
}
