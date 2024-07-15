// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/material.dart';

class Signup extends StatelessWidget {
  const Signup({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: Stack(
          children: [
            Container(
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    "Sign up",
                    style: TextStyle(fontSize: 30, fontFamily: "myfont"),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  SvgPicture.asset("assets/images/signup.svg"),
                  SizedBox(
                    height: 15,
                  ),
                  Container(
                    width: 300,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(66),
                        color: Colors.purple[100]),
                    child: TextField(
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "Your Email:",
                          prefixIcon: Icon(
                            Icons.person,
                            color: Colors.purple,
                          )),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(0, 15, 0, 15),
                    width: 300,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(66),
                        color: Colors.purple[100]),
                    child: TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "Password:",
                          prefixIcon: Icon(
                            Icons.lock,
                            color: Colors.purple,
                          )),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.purple),
                      padding: MaterialStateProperty.all(
                          EdgeInsets.symmetric(horizontal: 115, vertical: 15)),
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(27))),
                    ),
                    child: Text(
                      "Sign up",
                      style: TextStyle(fontSize: 24, color: Colors.white),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Already have an accout ? "),
                      GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, "/login");
                        },
                        child: Text(
                          " Log in ",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Container(
                    width: 350,
                    child: Row(
                      children: [
                        Expanded(
                          child: Divider(
                            thickness: 1,
                            color: Colors.purple[900],
                          ),
                        ),
                        Text(
                          "OR",
                          style: TextStyle(color: Colors.purple[900]),
                        ),
                        Expanded(
                          child: Divider(
                            thickness: 1,
                            color: Colors.purple[900],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          padding: EdgeInsets.all(13),
                          margin: EdgeInsets.only(right: 15),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(color: Colors.purple, width: 1),
                          ),
                          child: SvgPicture.asset(
                            "assets/images/facebook.svg",
                            color: Colors.purple[700],
                            height: 35,
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.all(13),
                          margin: EdgeInsets.only(right: 15),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(color: Colors.purple, width: 1),
                          ),
                          child: SvgPicture.asset(
                            "assets/images/twitter.svg",
                            color: Colors.purple[700],
                            height: 35,
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.all(13),
                          margin: EdgeInsets.only(right: 15),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(color: Colors.purple, width: 1),
                          ),
                          child: SvgPicture.asset(
                            "assets/images/google-plus.svg",
                            color: Colors.purple[700],
                            height: 35,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              child: Image.asset(
                "assets/images/main_top.png",
                width: 150,
              ),
            ),
            Positioned(
              bottom: 0,
              right: 0,
              child: Image.asset(
                "assets/images/login_bottom.png",
                width: 150,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
