import 'package:flutter/services.dart';
// import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import '../main.dart';
// import 'package:udan/main.dart';
// void main() {
//   SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
//     statusBarColor: Colors.red,
//   ));

// }
var scaffoldKey = GlobalKey<ScaffoldState>();

class homescreen extends StatefulWidget {
  // const homescreen({Key? key}) : super(key: key);

  @override
  _homescreenState createState() => _homescreenState();
}

class _homescreenState extends State<homescreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 1,
      child: Scaffold(
          key: scaffoldKey,
          drawer: Drawer(
            child: MyDrawer(),
          ),
          appBar: AppBar(
            centerTitle: true,
            backgroundColor: Colors.black,
            // elevation: 20,
            leading: IconButton(
                icon: Icon(
                  Icons.menu,
                  color: Colors.white,
                ),
                onPressed: () {
                  scaffoldKey.currentState.openDrawer();
                }),
            // centerTitle: false,
            title: Text(
              'UDAAN',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            actions: <Widget>[
                Padding(
                padding: EdgeInsets.only(right: 15.0),
                child: GestureDetector(
                  onTap: () {},
                  child: Icon(
                    Icons.favorite,
                    color: Colors.white,
                  ),
                ),
              ),
                Padding(
                padding: EdgeInsets.only(right: 15.0),
                child: GestureDetector(
                  onTap: () {},
                  child: Icon(
                    Icons.notifications,
                    color: Colors.white,
                  ),
                ),
              ),
              Padding(
                  padding: EdgeInsets.only(right: 15.0),
                  child: GestureDetector(
                    onTap: () {},
                    child: Icon(
                      Icons.shopping_cart,
                      color: Colors.white,
                    ),
                  ))
            ],
            bottom: PreferredSize(
              preferredSize: Size.fromHeight(50),
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: TextField(
                  keyboardType: TextInputType.text,
                  style: TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.white,
                      ),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    hintText: "Search",
                    hintStyle: TextStyle(color: Colors.white),
                    prefixIcon: Icon(
                      Icons.search,
                      color: Colors.white,
                      size: 25,
                    ),
                    suffixIcon: Icon(
                      Icons.photo_camera,
                      color: Colors.white,
                      size: 25,
                    ),
                  ),
                ),
              ),
            ),
          ),
          body: ListView(
            scrollDirection: Axis.vertical,
            children: [
              Container(
                // alignment: Alignment.bottomRight,
                child: FittedBox(
                  child: Material(
                    // color: Colors.grey,
                    // borderRadius: BorderRadius.circular(0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  shape: BoxShape.rectangle,
                                ),
                                // alignment: Alignment.centerLeft,
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 15.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      CircleAvatar(
                                          backgroundColor: Colors.white,
                                          radius: 22.0,
                                          child: Container(
                                            alignment: Alignment.centerLeft,
                                            decoration: BoxDecoration(
                                                shape: BoxShape.circle,
                                                image: DecorationImage(
                                                  image: AssetImage(
                                                    "images/udaan1.jpeg",
                                                  ),
                                                  fit: BoxFit.fill,
                                                )),
                                          )),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Text(
                                        "udaan",
                                        style: TextStyle(
                                            fontSize: 25,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Container(
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 15.0),
                                  child: Text(
                                    "Welcomes \nAll Shop Owners !",
                                    style: TextStyle(
                                        fontSize: 30,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.red[900]),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            width: 200,
                            height: 150,
                            child: ClipRRect(
                              borderRadius: new BorderRadius.circular(5),
                              child: Image(
                                fit: BoxFit.contain,
                                alignment: Alignment.topRight,
                                image: AssetImage("images/welcomeimage.jpg"),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Divider(
                thickness: 2,
                color: Colors.black,
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Container(
                  // alignment: Alignment.bottomRight,
                  child: FittedBox(
                    child: Material(
                      // color: Colors.grey,
                      // borderRadius: BorderRadius.circular(0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                    shape: BoxShape.rectangle,
                                  ),
                                  // alignment: Alignment.centerLeft,
                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 5.0),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          "Complete Shop KYC",
                                          style: TextStyle(
                                              fontSize: 40,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Container(
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                        left: 5.0, top: 10.0),
                                    child: Text(
                                      "You must complete KYC to:",
                                      style: TextStyle(
                                          fontSize: 25,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              width: 200,
                              height: 150,
                              child: ClipRRect(
                                borderRadius: new BorderRadius.circular(5),
                                child: Image(
                                  fit: BoxFit.contain,
                                  alignment: Alignment.topRight,
                                  image:
                                      AssetImage("images/magnifineglass.jpg"),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top:5.0,left: 30),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        CircleAvatar(
                            backgroundColor: Colors.white,
                            radius: 12.0,
                            child: Container(
                              child: Text("\u20B9",style:TextStyle(fontSize: 25,color: Colors.blue))
                            )),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "Check wholesale product prices",
                          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        CircleAvatar(
                                backgroundColor: Colors.white,
                                radius: 12.0,
                                child: Container(
                                  child: Icon(Icons.shopping_cart,color: Colors.red,),
                                 
                                ),),
                                SizedBox(
                          width: 10,
                        ),
                        Text(
                          "place orders on udaan",
                          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                        
                  ],
                ),
              ),
              InkWell(
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  
                    child: Container(
                      child:Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                           Text(
                        "START KYC ",
                        style:
                            TextStyle(fontSize: 22, fontWeight: FontWeight.bold,color: Colors.white),
                      ),
                          Icon(Icons.arrow_forward_sharp,color: Colors.white,size: 30,),
                          
                        ],
                      ),
                      
                      alignment: Alignment.center,
                      height: 50,
                      decoration: BoxDecoration(
                        color: Colors.red[900],
                      ),
                     
                    ),
                  
                ),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => null));
                },
              ),
              Divider(
                thickness: 1,
                
              ),
              
            ],
          )),
    );
  }
}