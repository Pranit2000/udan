import 'package:flutter/material.dart';
import 'dart:async';

class udaanscreen extends StatefulWidget {
  // const udaan({Key? key}) : super(key: key);

  @override
  _udaanscreenState createState() => _udaanscreenState();
}

class _udaanscreenState extends State<udaanscreen> {
  void StartTimer() {
    // TODO: implement initState

    Timer(Duration(seconds: 2), () {
      Navigator.of(context).pushReplacementNamed("start");
    });
  }

  @override
  void initState() {
    super.initState();
    StartTimer();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Container(
            decoration: BoxDecoration(color: Colors.red[900]),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Expanded(
                  flex: 2,
                  child: Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        CircleAvatar(
                            backgroundColor: Colors.white,
                            radius: 70.0,
                            child: Container(
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  image: DecorationImage(
                                      image: AssetImage(
                                        "images/udaan1.jpeg",
                                      ),
                                      fit: BoxFit.fill)),
                            )
                            // Icon(
                            //   Icons.shopping_cart,
                            //   color: Colors.redAccent,
                            //   size: 50.0,
                            // ),
                            ),
                        Padding(
                          padding: EdgeInsets.only(top: 10.0),
                        ),
                        Text(
                          "UDAAN",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 24.0,
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  )),
              Expanded(
                  flex: 1,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      CircularProgressIndicator(
                        // color: Colors.white,
                      ),
                      Padding(padding: EdgeInsets.only(top: 30.0)),
                      Text(
                        "Online Store \nFor Everyone",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold),
                      )
                    ],
                  ))
            ],
          )
        ],
      ),
    );
  }
}