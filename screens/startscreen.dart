import 'package:flutter/material.dart';
import 'package:udaan_application/screens/tncscreen.dart';
// import 'package:udan/screens/numberscreen.dart';
// import 'package:udan/screens/tncscreen.dart';

class startscreen extends StatefulWidget {
  // const startscreen({Key? key}) : super(key: key);

  @override
  _startscreenState createState() => _startscreenState();
}

class _startscreenState extends State<startscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(color: Colors.black87),
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 200),
              child: Expanded(
                flex: 9,
                child: Container(
                  child: Column(
                    children: <Widget>[
                      CircleAvatar(
                        backgroundColor: Colors.white,
                        radius: 35.0,
                        child: Container(
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                                image: AssetImage("images/udaan1.jpeg"),
                                fit: BoxFit.fill),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 30.0),
                      ),
                      Text(
                        "Welcome to Udaan",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 28.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        "India's largest B2B trade network",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20.0,
                        ),
                      ),
                      SizedBox(
                        height: 45,
                      ),
                      Text(
                        "Retailers | Treders | Wholesalers",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18.0,
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        "Distributors | Manufacturers | Brands",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18.0,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 220,
            ),
            Expanded(
              flex: 1,
              child: InkWell(
                child: Container(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    alignment: Alignment.center,
                    height: 50,
                    decoration: BoxDecoration(
                      color: Colors.blue,
                    ),
                    child: Text(
                      "Get Started",
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => tncscreen()));
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}