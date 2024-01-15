import 'package:flutter/material.dart';
import 'page/settings.dart';
import 'page/about.dart';

void main() {
  runApp(myApp());
}

class myApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: myHomePage(),
      routes: {
        '/page1' : (context) => about(),
        '/page2' : (context) => settings(),
      },
    );
  }
}

class myHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: Text("Drawer"),
      ),
      body: const Center(
        child: Text(
          "HOME PAGE",
          style: TextStyle(fontSize: 50),
        ),
      ),
      drawer: Drawer(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(20),
              width: double.infinity,
              height: 150,
              color: Colors.amber,
              alignment: Alignment.bottomLeft,
              child: Text(
                "Menu Pilihan",
                style: TextStyle(color: Colors.black, fontSize: 24),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            ListTile(
              onTap: () {
                Navigator.of(context).pushNamed('/page1');
              },
              leading: Icon(
                Icons.info,
                size: 25,
              ),
              title: Text(
                'About',
                style: TextStyle(fontSize: 15),
              ),
            ),
            ListTile(
              onTap: () {
                Navigator.of(context).pushNamed('/page2');
              },
              leading: Icon(
                Icons.settings,
                size: 25,
              ),
              title: Text(
                'Settings',
                style: TextStyle(fontSize: 15),
              ),
            )
          ],
        ),
      ),
    );
  }
}
