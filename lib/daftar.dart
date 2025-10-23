import 'package:flutter/material.dart';
import 'package:uts_nina_2407810040011/login.dart';
import 'package:uts_nina_2407810040011/menu.dart';

class Daftar extends StatefulWidget {
  const Daftar({super.key});

  @override
  State<Daftar> createState() => _DaftarState();
}

class _DaftarState extends State<Daftar> {
  bool _showpassword = true;
  final TextEditingController _namacontroller = TextEditingController();
  final TextEditingController _alamatcontroller = TextEditingController();
  final TextEditingController _usercontroller = TextEditingController();
  final TextEditingController _passwordcontroller = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Image(
              image: AssetImage("gambar/logo.png"),
              width: 100,
              height: 100,
            ),
            Text(
              "LKS MART",
              style: TextStyle(
                fontSize: 35,
                fontWeight: FontWeight.bold,
                color: Colors.blueAccent,
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Daftar",
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Silahkan isi Data Pribadi Anda",
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.normal,
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                spacing: 5,
                children: [
                  Text("Nama Lengkap"),
                  TextField(
                    controller: _namacontroller,
                    decoration: InputDecoration(
                      hintText: "Nama Lengkap",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                  ),

                  Text("Alamat"),
                  TextField(
                    controller: _alamatcontroller,
                    decoration: InputDecoration(
                      hintText: "Alamat",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                  ),

                  Text("Username"),
                  TextField(
                    controller: _usercontroller,
                    decoration: InputDecoration(
                      hintText: "username",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                  ),

                  Text("Password*"),
                  TextField(
                    controller: _passwordcontroller,
                    obscureText: _showpassword,
                    decoration: InputDecoration(
                      suffixIcon: IconButton(
                        onPressed: () {
                          setState(() {
                            _showpassword = !_showpassword;
                          });
                        },
                        icon: Icon(
                          _showpassword
                              ? Icons.remove_red_eye
                              : Icons.visibility_off,
                        ),
                      ),
                      hintText: "Min. 8 characters",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                  ),

                  Text("Konfirmasi Password*"),
                  TextField(
                    controller: _passwordcontroller,
                    obscureText: _showpassword,
                    decoration: InputDecoration(
                      suffixIcon: IconButton(
                        onPressed: () {
                          setState(() {
                            _showpassword = !_showpassword;
                          });
                        },
                        icon: Icon(
                          _showpassword
                              ? Icons.remove_red_eye
                              : Icons.visibility_off,
                        ),
                      ),
                      hintText: "Min. 8 characters",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                  ),


                  Padding(
                    padding: const EdgeInsets.all(8),
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => Menu()),
                              );
                            },
                            child: const Text('Daftar'),
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.blueAccent,
                              foregroundColor: Colors.white,
                              minimumSize: const Size(double.infinity, 50),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadiusGeometry.circular(8),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Sudah Punya Akun? "),
                        TextButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => login()),
                            );
                          },
                          child: Text("Login di sini"),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),

        ],
      ),
      ),
    );
  }
}