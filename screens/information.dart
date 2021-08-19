import 'package:flutter/material.dart';

import 'homescreen.dart';

class informationscreen extends StatefulWidget {
  // const informationscreen({Key? key}) : super(key: key);

  @override
  _informationscreenState createState() => _informationscreenState();
}

class _informationscreenState extends State<informationscreen> {
  bool checkBoxtvalue = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        child: Container(
          alignment: Alignment.center,
          color: Colors.white,
          child: Column(
            children: [
              Expanded(
         
                child: Padding(
                  padding: const EdgeInsets.only(top:80.0),
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CircleAvatar(
                          backgroundColor: Colors.black,
                          radius: 70.0,
                          child: Container(
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                  image: AssetImage("images/man1.jpg"),
                                  fit: BoxFit.cover),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Text(
                          "Enter Account Infomation",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 24.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Text(
                          "Register your bussiness on udaan",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 14.0,
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(15),
                          child: Container(
                            child: Column(children: [
                              Container(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  "Your Name:",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 16.0,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              TextField(
                                keyboardType: TextInputType.text,
                                decoration: InputDecoration(
                                  hintText: "Enter your name",
                                  hintStyle: TextStyle(color: Colors.black),
                                  // labelText: "+91",
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              Container(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  "Bussiness or Shop Name",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 16.0,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              TextField(
                                keyboardType: TextInputType.text,
                                decoration: InputDecoration(
                                  hintText: "Enter the name of your bussiness ",
                                  hintStyle: TextStyle(color: Colors.black),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              Container(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  "pincode",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 16.0,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              TextField(
                                keyboardType: TextInputType.number,
                                decoration: InputDecoration(
                                  hintText: "Enter your area pincode",
                                  hintStyle: TextStyle(color: Colors.black),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                ),
                              ),
                            ]),
                          ),
                        ),
                        SizedBox(height: 10,),
                        Text(
                          'Receive order and account related updates on whatsapp',style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Container(
                color: Colors.blue,
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 0),
                  child: InkWell(
                    child: Container(
                      alignment: Alignment.center,
                      height: 50,
                      decoration: BoxDecoration(
                        color: Colors.deepOrange,
                      ),
                      child: Text(
                        "Next",
                        style:
                            TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                      ),
                    ),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => homescreen()));
                    }
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Child {}