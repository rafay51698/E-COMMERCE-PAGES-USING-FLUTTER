import 'package:flutter/material.dart';

import 'home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            leading: Icon(
              Icons.menu,
              color: Colors.black87,
            ),
            title: Text("Ecom App UI",
                style: TextStyle(
                    color: Colors.black, fontWeight: FontWeight.bold)),
            centerTitle: true,
            backgroundColor: Colors.white,
            actions: [
              Padding(
                padding: const EdgeInsets.only(right: 10),
                child: Icon(
                  Icons.notifications,
                  color: Colors.black87,
                ),
              ),
            ],
          ),
          body: EcomPage(),
          
        ));
  }
}

class EcomPage extends StatefulWidget {
  @override
  _EcomPageState createState() => _EcomPageState();
}

class _EcomPageState extends State<EcomPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              Row(children: [
                Image(
                    image: AssetImage("assets/usericon.png"),
                    height: 150,
                    width: 150),
                Column(
                  children: [
                    Text(
                      "User",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "\tabc@gmail.com",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "logout",
                      style: TextStyle(color: Colors.purple),
                    )
                  ],
                )
              ]),
              ListTile(
                  title: Text(
                "Account Information",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                textAlign: TextAlign.start,
              )),
              ListTile(
                  title: Text(
                "  Full Name",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                textAlign: TextAlign.start,
              )),
              Padding(
                padding: const EdgeInsets.only(top: 0, left: 22, right: 22),
                child: Column(
                  children: <Widget>[
                    Container(
                      decoration: BoxDecoration(color: Colors.white),
                      child: TextField(
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: " User",
                            hintStyle: TextStyle(color: Colors.grey)),
                      ),
                    ),
                  ],
                ),
              ),
              ListTile(
                  title: Text(
                "  Email",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                textAlign: TextAlign.start,
              )),
              Padding(
                padding: const EdgeInsets.only(top: 0, left: 22, right: 22),
                child: Column(
                  children: <Widget>[
                    Container(
                      decoration: BoxDecoration(color: Colors.white),
                      child: TextField(
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: " abc@gmail.com",
                            hintStyle: TextStyle(color: Colors.grey)),
                      ),
                    ),
                  ],
                ),
              ),
              ListTile(
                  title: Text(
                "  Phone",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                textAlign: TextAlign.start,
              )),
              Padding(
                padding: const EdgeInsets.only(top: 0, left: 22, right: 22),
                child: Column(
                  children: <Widget>[
                    Container(
                      decoration: BoxDecoration(color: Colors.white),
                      child: TextField(
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: " +0900-786 01",
                            hintStyle: TextStyle(color: Colors.grey)),
                      ),
                    ),
                  ],
                ),
              ),
              ListTile(
                  title: Text(
                "  Address",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                textAlign: TextAlign.start,
              )),
              Padding(
                padding: const EdgeInsets.only(top: 0, left: 22, right: 22),
                child: Column(
                  children: <Widget>[
                    Container(
                      decoration: BoxDecoration(color: Colors.white),
                      child: TextField(
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: " New York,Random Street House No. 72",
                            hintStyle: TextStyle(color: Colors.grey)),
                      ),
                    ),
                  ],
                ),
              ),
              ListTile(
                  title: Text(
                "  Gender",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                textAlign: TextAlign.start,
              )),
              Padding(
                padding: const EdgeInsets.only(top: 0, left: 22, right: 22),
                child: Column(
                  children: <Widget>[
                    Container(
                      decoration: BoxDecoration(color: Colors.white),
                      child: TextField(
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: " Male",
                            hintStyle: TextStyle(color: Colors.grey)),
                      ),
                    ),
                  ],
                ),
              ),
              ListTile(
                title: Text(
                  "  Date Of Birth",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                  textAlign: TextAlign.start,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 0, left: 22, right: 22),
                child: Column(
                  children: <Widget>[
                    Container(
                      decoration: BoxDecoration(color: Colors.white),
                      child: TextField(
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: " Octoberr 13, 1977",
                            hintStyle: TextStyle(color: Colors.grey)),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Ecom()));
                  },
                  child: Text("Next"))
            ],
          ),
        ),
      ),
    );
  }
}
