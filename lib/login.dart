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
      body: Padding(
        padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Image(
                image: AssetImage("gambar/logo.png"),
                width: 150,
                height: 150,
              ),
              Text("LKS MART",
              style: TextStyle(
                fontSize: 50, fontWeight: FontWeight.bold, color: Colors.blueAccent
              ),
              ),
              Text("Sign In", style: TextStyle(fontSize: 30, fontWeight: FontWeight.normal,),),
              Text("Enter your ID and password to sign in!", style: TextStyle(fontSize: 10, fontWeight: FontWeight.normal, color: Colors.grey),)
            ],
          ),
        ),
    );
  }
}
