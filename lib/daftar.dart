import 'package:flutter/material.dart';

class Daftar extends StatefulWidget {
  const Daftar({super.key});

  @override
  State<Daftar> createState() => _DaftarState();
}

class _DaftarState extends State<Daftar> {
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
            Text(
              "LKS MART",
              style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.bold,
                color: Colors.blueAccent,
              ),
            ),
            
        ],
      ),
      ),
    );
  }
}