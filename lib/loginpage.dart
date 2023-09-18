import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // backgroundColor: Colors.teal[50],
        body: Column(
      children: [
        Container(
            alignment: Alignment.topRight,
            child: Image.asset(
              "assets/asset1.png",
              height: 150,
            )),
        Stack(
          alignment: Alignment.center,
          children: [
            Image.asset(
              "assets/asset2.png",
              height: 300,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 100),
              child: Column(
                children: [
                  Image.asset(
                    "assets/logo.png",
                    height: 50,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Advents",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                        color: Colors.teal),
                  ),
                  Text(
                    "Share your adventure with us!",
                    style: TextStyle(color: Colors.black54),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TextField(
                    decoration: InputDecoration(
                        labelText: 'Email',
                        border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(30)))),
                  ),
                  SizedBox(height: 20),
                  TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                        labelText: 'Password',
                        border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(30)))),
                  ),
                  SizedBox(height: 10),
                  Container(
                    alignment: Alignment.centerRight,
                    child: const Text("Forgot Password?",
                        style: TextStyle(
                            color: Colors.teal, fontWeight: FontWeight.bold)),
                  )
                ],
              ),
            )
          ],
        ),
        SizedBox(height: 20),
        Text(
          "Sign in with",
          style: TextStyle(color: Colors.black54),
        ),
        SizedBox(height: 30),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              "assets/search.png",
              height: 45,
            ),
            SizedBox(width: 30),
            Image.asset("assets/facebook.png", height: 45)
          ],
        ),
        SizedBox(height: 30),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 80),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: 150,
                height: 50,
                decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(
                      color: Colors.teal,
                    ),
                    borderRadius: BorderRadius.circular(30)),
                child: TextButton(
                  onPressed: () {},
                  child: const Text(
                    "Sign Up",
                    style: TextStyle(color: Colors.teal, fontSize: 18),
                  ),
                ),
              ),
              Container(
                width: 150,
                height: 50,
                decoration: BoxDecoration(
                    color: Colors.teal,
                    borderRadius: BorderRadius.circular(30)),
                child: TextButton(
                  onPressed: () {
                    SnackBar snackBar = SnackBar(
                      content: Text("Sign In Success"),
                    );
                    ScaffoldMessenger.of(context).showSnackBar(snackBar);
                  },
                  child: const Text(
                    "Sign In",
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                ),
              ),
            ],
          ),
        )
      ],
    ));
  }
}
