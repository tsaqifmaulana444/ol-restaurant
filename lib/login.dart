import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        scrollDirection: Axis.vertical,
        children: [
          Column(
            children: [
              // logo
              Container(
                margin: const EdgeInsets.only(top: 50),
                child: Column(
                  children: const [
                    CircleAvatar(
                      radius: 60,
                      backgroundImage: AssetImage("images/logo2.png"),
                      backgroundColor: Colors.white,
                    ),
                    SizedBox(
                      height: 3,
                    ),
                    Text(
                      "Login To Continue",
                      style: TextStyle(
                        fontFamily: "IBMPlexSansBold",
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 20, 20, 20),
                      ),
                    ),
                  ],
                ),
              ),
              // login form
              Container(
                margin: const EdgeInsets.only(top: 16),
                child: Column(
                  children: [
                    Container(
                      margin: const EdgeInsets.fromLTRB(41, 0, 0, 4),
                      child: const Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            "Email",
                            style: TextStyle(
                                fontFamily: "Roboto",
                                fontSize: 14,
                                fontWeight: FontWeight.bold),
                          )),
                    ),
                    const SizedBox(
                      width: 285.0,
                      height: 40.0,
                      child: TextField(
                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(16)),
                              borderSide: BorderSide(
                                  color: Color.fromARGB(255, 201, 201, 201),
                                  width: 1)),
                          focusedBorder: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(16)),
                              borderSide: BorderSide(
                                  color: Color.fromARGB(255, 167, 167, 167),
                                  width: 0)),
                          hintStyle: TextStyle(
                              color: Color.fromARGB(255, 154, 154, 154),
                              fontSize: 12,
                              fontFamily: 'Roboto'),
                          hintText: "Email",
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Column(
                children: [
                  Container(
                    margin: const EdgeInsets.fromLTRB(41, 16, 0, 4),
                    child: const Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          "Password",
                          style: TextStyle(
                              fontFamily: "Roboto",
                              fontSize: 14,
                              fontWeight: FontWeight.bold),
                        )),
                  ),
                  const SizedBox(
                    width: 285.0,
                    height: 40.0,
                    child: TextField(
                      obscureText: true,
                      enableSuggestions: true,
                      autocorrect: true,
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(16)),
                            borderSide: BorderSide(
                                color: Color.fromARGB(255, 201, 201, 201),
                                width: 1)),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(16)),
                            borderSide: BorderSide(
                                color: Color.fromARGB(255, 167, 167, 167),
                                width: 0)),
                        hintStyle: TextStyle(
                            color: Color.fromARGB(255, 154, 154, 154),
                            fontSize: 12,
                            fontFamily: 'Roboto'),
                        hintText: "Password",
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(0, 17, 0, 9),
                child: SizedBox(
                  width: 285.0,
                  height: 40.0,
                  child: TextButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/home');
                    },
                    style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(
                            const Color.fromARGB(255, 250, 139, 66)),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18.0),
                        ))),
                    child: const Text("Continue",
                        style: TextStyle(
                            color: Color.fromARGB(255, 255, 255, 255),
                            fontSize: 17,
                            fontFamily: "Roboto")),
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(0, 20, 0, 20),
                child: SizedBox(
                  width: 270,
                  child: Row(
                    children: const [
                      Expanded(
                          flex: 2,
                          child: Divider(
                            color: Color.fromARGB(255, 154, 154, 154),
                          )),
                      Expanded(
                          flex: 1,
                          child: Align(
                              alignment: Alignment.center,
                              child: Text(
                                "Or",
                                style: TextStyle(
                                    color: Color.fromARGB(255, 154, 154, 154)),
                              ))),
                      Expanded(
                          flex: 2,
                          child: Divider(
                            color: Color.fromARGB(255, 154, 154, 154),
                          )),
                    ],
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(0, 9, 0, 6),
                child: SizedBox(
                  width: 285.0,
                  height: 40.0,
                  child: TextButton.icon(
                    onPressed: () {
                      Navigator.pushNamed(context, '/home');
                    },
                    icon: const Image(
                      image: AssetImage("images/icon1.png"),
                      width: 20,
                      height: 20,
                    ),
                    label: const Text(
                      'Sign In With Google',
                      style: TextStyle(
                        color: Colors.black,
                        fontFamily: 'Roboto',
                        
                        ),
                    ),
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all<Color>(Colors.white),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(18.0),
                                    side: const BorderSide(
                                        color: Color.fromARGB(
                                            255, 201, 201, 201))))),
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(0, 5, 0, 4),
                child: SizedBox(
                  width: 285.0,
                  height: 40.0,
                  child: TextButton.icon(
                    onPressed: () {
                      Navigator.pushNamed(context, '/home');
                    },
                    icon: const Image(
                      image: AssetImage("images/icon2.png"),
                      width: 20,
                      height: 20,
                    ),
                    label: const Text(
                      'Sign In With Apple',
                      style: TextStyle(color: Colors.black),
                    ),
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all<Color>(Colors.white),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(18.0),
                                    side: const BorderSide(
                                        color: Color.fromARGB(
                                            255, 201, 201, 201))))),
                  ),
                ),
              ),
            ],
          ),
          Container(
            margin: const EdgeInsets.fromLTRB(43, 3, 0, 0),
            child: Row(
              children: [
                const Text("Don't Have Account?"),
                TextButton(
                    onPressed: () {},
                    child: const Text(
                      "Sign Up",
                      style:
                          TextStyle(color: Color.fromARGB(255, 250, 139, 66)),
                    ))
              ],
            ),
          )
        ],
      ),
    );
  }
}
