import 'package:flutter/material.dart';

class profilescreen extends StatefulWidget {
  // const profilescreen({Key? key}) : super(key: key);

  @override
  _profilescreenState createState() => _profilescreenState();
}

class _profilescreenState extends State<profilescreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // centerTitle: true,
        backgroundColor: Colors.red[800],
        // elevation: 20,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
          onPressed: () {},
        ),
        // centerTitle: false,
        title: Text(
          'Account',
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
                  Icons.shopping_cart,
                  color: Colors.white,
                ),
              ))
        ],
      ),
      body: Container(
        color: Colors.black,
        child: Container(
          alignment: Alignment.center,
          color: Colors.white10,
          child: Column(
            children: [
              Container(
                color: Colors.transparent,
                height: 80,
                // margin: EdgeInsets.only(top:30),
                alignment: Alignment.center,

                child: ListTile(
                  selectedTileColor: Colors.red,
                  tileColor: Colors.blue,
                  title: Text(
                    'User Details',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  subtitle: Text(
                    "Name, Mobile, Email Account",
                    style: TextStyle(color: Colors.white),
                  ),
                  trailing: Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.white,
                  ),
                  leading: CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: 22.0,
                      child: Container(
                        alignment: Alignment.centerLeft,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                              image: AssetImage(
                                "images/profile1.png",
                              ),
                              fit: BoxFit.fill,
                            )),
                      )),
                ),
              ),
              Container(
                color: Colors.transparent,
                height: 80,
                // margin: EdgeInsets.only(top:30),
                alignment: Alignment.center,

                child: ListTile(
                  selectedTileColor: Colors.red,
                  tileColor: Colors.blue,
                  title: Text(
                    'Bussiness Details',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  subtitle: Text(
                    "Name, Documents, Tax Certificate...",
                    style: TextStyle(color: Colors.white),
                  ),
                  trailing: Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.white,
                  ),
                  leading: CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: 22.0,
                      child: Container(
                        alignment: Alignment.centerLeft,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                              image: AssetImage(
                                "images/profile4.png",
                              ),
                              fit: BoxFit.fill,
                            )),
                      )),
                ),
              ),
              Container(
                color: Colors.transparent,
                height: 80,
                // margin: EdgeInsets.only(top:30),
                alignment: Alignment.center,

                child: ListTile(
                  selectedTileColor: Colors.red,
                  tileColor: Colors.blue,
                  title: Text(
                    'Account Settings',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  subtitle: Text(
                    "Address, Bank Details, etc.",
                    style: TextStyle(color: Colors.white),
                  ),
                  trailing: Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.white,
                  ),
                  leading: CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: 22.0,
                      child: Container(
                        alignment: Alignment.centerLeft,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                              image: AssetImage(
                                "images/profile1.png",
                              ),
                              fit: BoxFit.fill,
                            )),
                      )),
                ),
              ),
              Container(
                color: Colors.transparent,
                height: 80,
                // margin: EdgeInsets.only(top:30),
                alignment: Alignment.center,

                child: ListTile(
                  selectedTileColor: Colors.red,
                  tileColor: Colors.blue,
                  title: Text(
                    'Your Team',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  subtitle: Text(
                    "Manage people in your team.",
                    style: TextStyle(color: Colors.white),
                  ),
                  trailing: Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.white,
                  ),
                  leading: CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: 22.0,
                      child: Container(
                        alignment: Alignment.centerLeft,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                              image: AssetImage(
                                "images/team.png",
                              ),
                              fit: BoxFit.fill,
                            )),
                      )),
                ),
              ),
              Container(
                color: Colors.transparent,
                height: 80,
                // margin: EdgeInsets.only(top:30),
                alignment: Alignment.center,

                child: ListTile(
                  selectedTileColor: Colors.red,
                  tileColor: Colors.blue,
                  title: Text(
                    'Language Preference',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  subtitle: Text(
                    "Select a language.",
                    style: TextStyle(color: Colors.white),
                  ),
                  trailing: Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.white,
                  ),
                  leading: CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: 22.0,
                      child: Container(
                        alignment: Alignment.centerLeft,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                              image: AssetImage(
                                "images/languageimage1.png",
                              ),
                              fit: BoxFit.fill,
                            )),
                      )),
                ),
              ),
              Container(
                color: Colors.transparent,
                height: 80,
                // margin: EdgeInsets.only(top:30),
                alignment: Alignment.center,

                child: ListTile(
                  selectedTileColor: Colors.red,
                  tileColor: Colors.blue,
                  title: Text(
                    'Active Sessions',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  subtitle: Text(
                    "View all active sessions",
                    style: TextStyle(color: Colors.white),
                  ),
                  trailing: Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.white,
                  ),
                  leading: CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: 22.0,
                      child: Container(
                        alignment: Alignment.centerLeft,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                              image: AssetImage(
                                "images/mobile2.jfif",
                              ),
                              fit: BoxFit.fill,
                            )),
                      )),
                ),
              ),
              Container(
                color: Colors.transparent,
                height: 80,
                // margin: EdgeInsets.only(top:30),
                alignment: Alignment.center,

                child: ListTile(
                  selectedTileColor: Colors.red,
                  tileColor: Colors.blue,
                  title: Text(
                    'Tax Cetificates',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  subtitle: Text(
                    "Download TCS u/s 206c certificates",
                    style: TextStyle(color: Colors.white),
                  ),
                  trailing: Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.white,
                  ),
                  leading: CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: 22.0,
                      child: Container(
                        alignment: Alignment.centerLeft,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                              image: AssetImage(
                                "images/tax3.jfif",
                              ),
                              fit: BoxFit.fill,
                            )),
                      )),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}