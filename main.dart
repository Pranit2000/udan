// import 'dart:js';

// import 'dart:js';

import 'package:flutter/material.dart';
import 'package:udaan_application/screens/homescreen.dart';
import 'package:udaan_application/screens/startscreen.dart';
// import 'package:udan/screens/homescreen.dart';
import 'package:flutter/services.dart';
import 'package:udaan_application/screens/udaanscreen.dart';
// import 'package:udan/screens/profilescreen.dart';/

void main() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarColor: Colors.red[900],
  ));
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.grey,
      ),
      // home: MyHomePage(title: 'Flutter Demo Home Page'),
      home: udaanscreen(),
      routes: {
        "start": (context) => startscreen(),
      },
      debugShowCheckedModeBanner: false,
    );
  }
}

// class MyHomePage extends StatefulWidget {
//   // MyHomePage({Key? key, required this.title}) : super(key: key);
// //
//   // This widget is the home page of your application. It is stateful, meaning
//   // that it has a State object (defined below) that contains fields that affect
//   // how it looks.

//   // This class is the configuration for the state. It holds the values (in this
//   // case the title) provided by the parent (in this case the App widget) and
//   // used by the build method of the State. Fields in a Widget subclass are
//   // always marked "final".

//   final String title;

//   @override
//   _MyHomePageState createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   int _counter = 0;

//   void _incrementCounter() {
//     setState(() {
//       // This call to setState tells the Flutter framework that something has
//       // changed in this State, which causes it to rerun the build method below
//       // so that the display can reflect the updated values. If we changed
//       // _counter without calling setState(), then the build method would not be
//       // called again, and so nothing would appear to happen.
//       _counter++;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     // This method is rerun every time setState is called, for instance as done
//     // by the _incrementCounter method above.
//     //
//     // The Flutter framework has been optimized to make rerunning build methods
//     // fast, so that you can just rebuild anything that needs updating rather
//     // than having to individually change instances of widgets.
//     return Scaffold(
//       appBar: AppBar(
//         // Here we take the value from the MyHomePage object that was created by
//         // the App.build method, and use it to set our appbar title.
//         title: Text(widget.title),
//       ),
//       body: Center(
//         // Center is a layout widget. It takes a single child and positions it
//         // in the middle of the parent.
//         child: Column(
//           // Column is also a layout widget. It takes a list of children and
//           // arranges them vertically. By default, it sizes itself to fit its
//           // children horizontally, and tries to be as tall as its parent.
//           //
//           // Invoke "debug painting" (press "p" in the console, choose the
//           // "Toggle Debug Paint" action from the Flutter Inspector in Android
//           // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
//           // to see the wireframe for each widget.
//           //
//           // Column has various properties to control how it sizes itself and
//           // how it positions its children. Here we use mainAxisAlignment to
//           // center the children vertically; the main axis here is the vertical
//           // axis because Columns are vertical (the cross axis would be
//           // horizontal).
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             Text(
//               'You have pushed the button this many times:',
//             ),
//             Text(
//               '$_counter',
//               style: Theme.of(context).textTheme.headline4,
//             ),
//           ],
//         ),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: _incrementCounter,
//         tooltip: 'Increment',
//         child: Icon(Icons.add),
//       ), // This trailing comma makes auto-formatting nicer for build methods.
//     );
//   }
// }

Widget MyDrawer() => Container(
    color: Colors.black,
    child: ListView(
      // scrollDirection: Axis.vertical,
      children: [
        // UserAccountsDrawerHeader(
        //   accountName: Text(
        //     "Rohan Patil",
        //     style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        //   ),
        //   accountEmail: Text(
        //     "rohan123@gmail.com",
        //     style: TextStyle(fontWeight: FontWeight.bold),
        //   ),
        //   currentAccountPicture: CircleAvatar(
        //     backgroundColor: Colors.purple,
        //     child: Text(
        //       "R",
        //       style:
        //           TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        //     ),
        //   ),
        // ),
        InkWell(
          child: Container(
            height: 80,
            // margin: EdgeInsets.only(top:30),
            alignment: Alignment.center,
            color: Colors.white10,
            child: ListTile(
              selectedTileColor: Colors.red,
              tileColor: Colors.blue,
              title: Text(
                'Rohan Patil',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              subtitle: Text(
                "7798217718",
                style: TextStyle(color: Colors.white),
              ),
              trailing: Icon(
                Icons.arrow_right_outlined,
                color: Colors.white,
                size: 40,
              ),
              leading: CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: 22.0,
                  child: Container(
                    alignment: Alignment.centerLeft,
                    decoration: BoxDecoration(
                        shape: BoxShape.rectangle,
                        image: DecorationImage(
                          image: AssetImage(
                            "images/udaan1.jpeg",
                          ),
                          fit: BoxFit.fill,
                        )),
                  )),
            ),
          ),
          onTap: () {
            
          },
        ),
        ListTile(
          onTap: (){
            // Navigator.push(context, MaterialPage(child: child));
          },
          title: Text(
            'categories',
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          leading: Icon(
            Icons.category,
            color: Colors.white,
          ),
        ),
        Divider(
          color: Colors.white,
        ),
        ListTile(
          title: Text(
            'Your Oreders',
            style: TextStyle(
                color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
          ),
          leading: Icon(
            Icons.wallet_giftcard,
            color: Colors.white,
          ),
        ),
        ListTile(
          title: Text(
            'Your Returns',
            style: TextStyle(
                color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
          ),
          leading: Icon(
            Icons.keyboard_return,
            color: Colors.white,
          ),
        ),
        Divider(
          color: Colors.white,
        ),
        ListTile(
          title: Text(
            'Rate Card',
            style: TextStyle(
                color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
          ),
          leading: Icon(
            Icons.money,
            color: Colors.white,
          ),
        ),
        ListTile(
          title: Text(
            'pay',
            style: TextStyle(
                color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
          ),
          leading: Icon(
            Icons.payment,
            color: Colors.white,
          ),
        ),
        ListTile(
          title: Text(
            'sell on',
            style: TextStyle(
                color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
          ),
          leading: Icon(
            Icons.beenhere,
            color: Colors.white,
          ),
        ),
        Divider(
          color: Colors.white,
        ),
        ListTile(
          title: Text(
            'Support',
            style: TextStyle(
                color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
          ),
          leading: Icon(
            Icons.support,
            color: Colors.white,
          ),
        ),
        ListTile(
          title: Text(
            'Terms of Use',
            style: TextStyle(
                color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
          ),
          leading: Icon(
            Icons.pages,
            color: Colors.white,
          ),
        ),
        ListTile(
          title: Text(
            'Policies',
            style: TextStyle(
                color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
          ),
          leading: Icon(
            Icons.policy_rounded,
            color: Colors.white,
          ),
        ),
        ListTile(
          title: Text(
            'About',
            style: TextStyle(
                color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
          ),
          leading: Icon(
            Icons.app_settings_alt,
            color: Colors.white,
          ),
        ),
        Divider(
          color: Colors.white,
        ),
        ListTile(
          title: Text(
            'Language',
            style: TextStyle(
                color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
          ),
          leading: Icon(
            Icons.language,
            color: Colors.white,
          ),
        ),
        Divider(
          color: Colors.white,
        ),
        ListTile(
          title: Text(
            'Expert Picks',
            style: TextStyle(
                color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
          ),
          leading: Icon(
            Icons.explore,
            color: Colors.white,
          ),
        ),
        Divider(
          color: Colors.white,
        ),
        ListTile(
          title: Text(
            'Logout',
            style: TextStyle(
                color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
          ),
          leading: Icon(
            Icons.logout,
            color: Colors.white,
          ),
        ),
      ],
    )
    //   ],
    // ),
    );
