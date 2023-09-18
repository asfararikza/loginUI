import 'package:flutter/material.dart';
import 'package:loginpage/loginpage.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: 110,
              ),
              Container(
                alignment: Alignment.centerLeft,
                padding: EdgeInsets.symmetric(horizontal: 50),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Welcome to",
                      style: TextStyle(fontSize: 30, color: Colors.black54),
                    ),
                    Text(
                      "Advents.",
                      style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Colors.teal),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 80,
              ),
              Image.asset(
                "assets/ilustrasi1.png",
                height: 240,
                width: 240,
              ),
              SizedBox(
                height: 40,
              ),
              Text(
                "Jelajahi keajaiban alam dengan Advents",
                style: TextStyle(color: Colors.black54),
              ),
              Text(
                "Siapkan diri Anda untuk petualangan",
                style: TextStyle(color: Colors.black54),
              ),
              Text(
                "tak terlupakan!",
                style: TextStyle(color: Colors.black54),
              ),
              SizedBox(
                height: 60,
              ),
              Container(
                width: 150,
                height: 50,
                decoration: BoxDecoration(
                    color: Colors.teal,
                    borderRadius: BorderRadius.circular(20)),
                child: TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              LoginPage()), // Ganti dengan halaman tujuan yang sesuai
                    );
                  },
                  child: Text(
                    "Sign In",
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
