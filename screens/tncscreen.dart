import 'package:flutter/material.dart';
// import 'package:udan/main.dart';
// import 'package:udan/screens/numberscreen.dart';

import 'numberscreen.dart';

class tncscreen extends StatefulWidget {
  // const tncscreen({Key? key}) : super(key: key);

  @override
  _tncscreenState createState() => _tncscreenState();
}

class _tncscreenState extends State<tncscreen> {
  bool Value = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(),
      body: Container(
        alignment: Alignment.center,
        color: Colors.black87,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Container(
                height: 300,
                alignment: Alignment.topLeft,
                decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Column(
                  children: [
                    Expanded(
                      flex: 9,
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: Text(
                              'Terms And Conditions',
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          Row(
                            children: [
                              // buildCheckbox(),

                              // Container(child: Icon(Icons.home,color:Colors.white),),
                              Text(
                                "Terms of use \n By clicking 'Accept',you agree to udaan's  \n Terms of use and Privacy policy",
                                style: TextStyle(color: Colors.white),
                              ),
                              SizedBox(
                                height: 80,
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              // buildCheckbox(),

                              // Container(child: Icon(Icons.home,color:Colors.white),),
                              Text(
                                "Terms and Conditions for Logistics Services \n and Payment services \n By clicking on 'Accept', you agree to the Terms \n of Use and Privacy Policy for availing the \n Logistics Services and \n Payment Services from Hiveloop Logistics \n Private limited.",
                                style: TextStyle(color: Colors.white),
                              ),
                            ],
                          ),
                        ],
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
                              color: Colors.lightBlue,
                            ),
                            child: Text(
                              "Accept & Continous",
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                          ),
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>numberscreen()));
                          },
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
    Widget buildCheckbox() => Checkbox(
          value: Value,
          onChanged: (Value) {
            setState(() {
              // this.value = Value;
            });
          },
        );
  }
}