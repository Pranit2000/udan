import 'package:flutter/material.dart';
import 'package:udaan_application/screens/verificationscreen.dart';
// import 'package:udan/screens/verificationscreen.dart';

class numberscreen extends StatefulWidget {
  // const numberscreen({Key? key}) : super(key: key);

  @override
  _numberscreenState createState() => _numberscreenState();
}

class _numberscreenState extends State<numberscreen> {
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
                        radius: 65.0,
                        child: Container(
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                                image: AssetImage("images/mobile.jpg"),
                                fit: BoxFit.fill),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 30.0),
                      ),
                      Text(
                        "Enter Mobile Number",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 24.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Text(
                          "Enter your 10-digit mobile number to receive the",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 14.0,
                          ),
                        ),
                      ),
                      Text(
                        "verification code",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 14.0,
                        ),
                      ),
                      SizedBox(
                        height: 45,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Container(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "Mobile number:",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 16.0,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),

                      Padding(
                        padding: const EdgeInsets.only(left: 20, right: 20),
                        child: TextField(
                          keyboardType: TextInputType.number,
                          maxLength: 10,
                          decoration: InputDecoration(
                            // hintText: "+91",
                            // hintStyle: TextStyle(color: Colors.black),

                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5),
                            ),
                            prefix: Padding(
                              padding: EdgeInsets.symmetric(horizontal: 8),
                              child: Text(
                                '+91',
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.bold),
                              ),
                            ),
                            suffixIcon: Icon(
                              Icons.check_circle,
                              color: Colors.green,
                              size: 32,
                            ),
                          ),
                        ),

                        // SizedBox(
                        //   height: 20,
                        // ),
                        // Text(
                        //   "Distributors | Manufacturers | Brands",
                        //   style: TextStyle(
                        //     color: Colors.white,
                        //     fontSize: 18.0,
                        //   ),
                      ), // ),
                    ],
                  ),
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
                        "Get Verification Code",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => verificationscreen()));
                    }),
              ),
            ),
          ],
        ),
      ),
    );
  }
}