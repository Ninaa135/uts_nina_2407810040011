import 'package:flutter/material.dart';

class login extends StatefulWidget {
  const login({super.key});

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            child: Column(
              spacing: 15,
              children: [
                Image(
                  image: AssetImage("gambar/logo.png"),
                  width: 200,
                  height: 200,
                ),
                Text("LKS",
                style: TextStyle(
                  fontSize: 50, fontWeight: FontWeight.bold, color: Colors.blueAccent
                ),
                ),
                Text("MART",
                style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold, color: Colors.blueAccent),)
              ],
            ),
          ),
        ],
      ),
    );
  }
}
