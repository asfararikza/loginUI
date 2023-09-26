import 'package:flutter/material.dart';

// ignore: must_be_immutable
class LoginPage extends StatefulWidget {
  LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String username = "";
  String password = "";

  bool isLogin = false;
  bool isPasswordVisible = false;

  late TextEditingController usernameController;
  late TextEditingController passwordController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    usernameController = TextEditingController();
    passwordController = TextEditingController();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    usernameController.dispose();
    passwordController.dispose();
  }

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
                    // onChanged: (value) {
                    //   username = value;
                    // },
                    controller: usernameController,
                    decoration: InputDecoration(
                        labelText: 'Email',
                        border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(30)))),
                  ),
                  SizedBox(height: 20),
                  TextFormField(
                    // onChanged: (value) {
                    //   password = value;
                    // },
                    controller: passwordController,
                    keyboardType: TextInputType.visiblePassword,
                    obscureText: isPasswordVisible,

                    decoration: InputDecoration(
                        labelText: 'Password',
                        border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(30))),
                        suffixIcon: Padding(
                          padding: EdgeInsets.only(right: 8),
                          child: IconButton(
                              onPressed: () {
                                setState(() {
                                  isPasswordVisible = !isPasswordVisible;
                                });
                              },
                              icon: (isPasswordVisible)
                                  ? Icon(Icons.visibility_off)
                                  : Icon(Icons.visibility)),
                        )),
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
                  // onPressed: () {
                  //   SnackBar snackBar = SnackBar(
                  //     content: Text("Sign In Success"),
                  //   );
                  //   ScaffoldMessenger.of(context).showSnackBar(snackBar);
                  // },
                  onPressed: () {
                    String text = "";
                    username = usernameController.text;
                    password = passwordController.text;

                    if (username == "flutterMobile" &&
                        password == "flutter123") {
                      text = "Login Success";
                      isLogin = true;
                    } else {
                      text = "Login Failed";
                      isLogin = false;
                    }
                    SnackBar snackBar = SnackBar(
                      content: Text(text),
                      backgroundColor: (isLogin) ? Colors.green : Colors.red,
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
