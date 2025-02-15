import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:my_app/view/Laundry%20service/sign_up_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _BusAppUiScreenState();
}

class _BusAppUiScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Colors.blue.shade200,
      body: Container(
        height: 1000,
        width: 500,
        decoration: BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(
                    "assets/image/iPhone 14 & 15 Pro Max - 10.png"))),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 120,
            ),
            Container(
                height: 230,
                width: 280,
                child: Image.asset("assets/image/amico.png")),
            Text(
              "Laundry Service",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                  fontWeight: FontWeight.bold),
            ),
            Text(
              "One stop destination for all a laundry ",
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            Text(
              " work such as washing,ironing and dry ",
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            Text(
              "cleaning",
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            SizedBox(
              height: 50,
            ),
            GestureDetector(
              onTap: () {setState(() {
                Get.to(SignUpScreen());
              });
              },
              child: Container(
                height: 35,
                width: 230,
                decoration: BoxDecoration(
                    color: CupertinoColors.link,
                    borderRadius: BorderRadius.circular(20)),
                child: Center(
                  child: Text(
                    "Creat Account",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                        color: Colors.white),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              height: 35,
              width: 230,
              child: Center(
                  child: Text(
                "Login",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                    color: Colors.blueAccent),
              )),
              decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Colors.blueAccent, width: 3),
                  borderRadius: BorderRadius.circular(20)),
            ),
          ],
        ),
      ),
    );
  }
}
