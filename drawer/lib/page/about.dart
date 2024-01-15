import 'package:flutter/material.dart';


class about extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "about",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.amber,
      ),
      body: const Center(
        child: Text(
          "PAGE ABOUT",
          style: TextStyle(fontSize: 50),
        ),
      ),
    );
  }
}
