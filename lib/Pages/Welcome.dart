// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Welcome extends StatelessWidget {
  const Welcome({super.key});

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
                SizedBox(height: 22,),
                Text("Welcome",style: TextStyle(fontSize: 35,fontFamily: "myfont"),),
                SizedBox(height: 22,),
                SvgPicture.asset("assets/images/chat.svg",width: 400) , 
                SizedBox(height: 22,),
              
                ElevatedButton(
                      onPressed: () {
                    Navigator.pushNamed(context, "/login");
                  },
                  
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.purple),
                    padding: MaterialStateProperty.all(
                        EdgeInsets.symmetric(horizontal: 79, vertical: 10)),
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(27))),
                  ),
                  child: Text(
                    "login",
                    style: TextStyle(fontSize: 24,color: Colors.white),
                  ),
                ),
                SizedBox(
                  height: 22,
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, "/signup");
                  },
                  
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all(Colors.purple[100]),
                    padding: MaterialStateProperty.all(
                        EdgeInsets.symmetric(horizontal: 77, vertical: 13)),
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(27))),
                  ),
                  child: Text(
                    "SIGNUP",
                    style: TextStyle(fontSize: 17, color: Colors.grey[850]),
                  ),
                ),
                ],
              ),
            ),
            Positioned(
              child:Image.asset("assets/images/main_top.png",width: 111,)
              
              ),
            Positioned(
                  bottom: 0,
              child:Image.asset("assets/images/main_bottom.png",width: 111,)
              
              ),
          ],
        ),
      ),
    );
  }
}
