import 'package:flutter/material.dart';
// import 'package:udan/screens/informationscreen.dart';

import 'information.dart';


class verificationscreen extends StatefulWidget {
  // const verificationscreen({Key? key}) : super(key: key);

  @override
  _verificationscreenState createState() => _verificationscreenState();
}

class _verificationscreenState extends State<verificationscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(color: Colors.white),
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 100),
              child: Expanded(
                flex: 9,
                child: Container(
                  child: Column(
                    children: <Widget>[
                      CircleAvatar(
                        backgroundColor: Colors.black,
                        radius: 70.0,
                        child: Container(
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                                image: AssetImage("images/bell.jpg"),
                                fit: BoxFit.cover),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 30.0),
                      ),
                      Text(
                        "Verify Mobile Number",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 24.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Text(
                          "Enter 6 digit verification code sent to ",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 14.0,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            _textfieldOTP(first: true, last: false),
                           
                            _textfieldOTP(first: false, last: false),
                          
                            _textfieldOTP(first: false, last: false),
                            
                            _textfieldOTP(first: false, last: false),
                           
                            _textfieldOTP(first: false, last: false),
                            
                            _textfieldOTP(first: false, last: true),
                          ],
                        ),
                      ),
                      Row(
                        children: <Widget>[],
                      )
                    ],
                  ),
                ),
              ),
            ),
            Padding(
                        padding: EdgeInsets.only(top: 20.0),
                      ),
                      Text(
                        "In case you have not received it",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16.0,
                          
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Text(
                          "Resend OTP",
                          style: TextStyle(
                            color: Colors.blue,
                            fontSize: 16.0,fontWeight: FontWeight.bold
                          ),
                        ),
                      ),
            Expanded(
              flex: 2,
              child: Container(
                alignment: Alignment.bottomCenter,
                child: InkWell(
                  child: Container(
                    alignment: Alignment.center,
                    height: 50,
                    decoration: BoxDecoration(
                      color: Colors.deepOrange,
                    ),
                    child: Text(
                      "Submit",
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                    ),
                  ),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => informationscreen()));
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  _textfieldOTP({bool first, last}) {
    return Container(
      alignment: Alignment.center,
        height: 50,
        child: AspectRatio(
          aspectRatio: 1.0,
          child: TextField(
            autofocus: true,
            onChanged: (value) {
              if (value.length == 1 && last == false) {
                FocusScope.of(context).nextFocus();
              }
              if (value.length == 0 && first == false) {
                FocusScope.of(context).previousFocus();
              }
            },
            showCursor: true,
            readOnly: false,
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            keyboardType: TextInputType.number,
            maxLength: 1,
            decoration: InputDecoration(
              counter: Offstage(),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(width: 2, color: Colors.black12),
                borderRadius: BorderRadius.circular(12),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(width: 2, color:Colors.red),
                borderRadius: BorderRadius.circular(12),
              ),
            ),
          ),
        ),);
  }
}