import 'package:flutter/material.dart';
import 'package:get/get.dart';
class BottomSheet extends StatefulWidget {
  const BottomSheet({super.key});

  @override
  State<BottomSheet> createState() => _ProfilePage1State();
}

class _ProfilePage1State extends State<BottomSheet> {
  _showBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      builder: (BuildContext context) {
        return Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Text('Log Out',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
              const SizedBox(
                height: 30,
              ),
              const Text(
                "Are You Sure you Want to log out",
                style: TextStyle(fontSize: 15, color: Color(0xff909090)),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 30,
                    width: 130,
                    decoration: BoxDecoration(
                        border: const Border(
                            top: BorderSide(width: 2, color: Color(0xff7DBABB)),
                            bottom:
                            BorderSide(width: 2, color: Color(0xff7DBABB)),
                            left:
                            BorderSide(width: 2, color: Color(0xff7DBABB)),
                            right:
                            BorderSide(width: 2, color: Color(0xff7DBABB))),
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20)),
                    child: const Center(
                        child: Text(
                          "Cancel",
                          style: TextStyle(fontSize: 17, color: Color(0xff7DBABB)),
                        )),
                  ),
                  const SizedBox(
                    width: 30,
                  ),
                  Container(
                    height: 30,
                    width: 130,
                    decoration: BoxDecoration(
                        color: const Color(0xff7DBABB),
                        borderRadius: BorderRadius.circular(20)),
                    child: const Center(
                        child: Text(
                          "Yes , log out",
                          style: TextStyle(fontSize: 17, color: Colors.white),
                        )),
                  ),
                ],
              )
            ],
          ),
        );
      },
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 100,
              ),
              Row(
                children: [
                  IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.arrow_back,
                        size: 30,
                      )),
                  const SizedBox(
                    width: 8,
                  ),
                  const Text(
                    "Profile",
                    style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: Color(0xff141414)),
                  )
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              InkWell(
                onTap: (){
                  Get.to(_showBottomSheet(context));
                },
                child: Container(
                  height: 65,
                  width: 330,
                  decoration: BoxDecoration(
                    // color: Colors.blue,
                      borderRadius: BorderRadius.circular(13),
                      border: const Border(
                          top: BorderSide(color: Color(0xffE0E0E0), width: 2),
                          bottom: BorderSide(color: Color(0xffE0E0E0), width: 2),
                          left: BorderSide(color: Color(0xffE0E0E0), width: 2),
                          right: BorderSide(color: Color(0xffE0E0E0), width: 2))),
                  child: const Row(
                    children: [
                      SizedBox(
                        width: 15,
                      ),
                      Icon(
                        Icons.logout,
                        color: Color(0xff9B9B9B),
                        size: 32,
                      ),
                      SizedBox(
                        width: 13,
                      ),
                      Text(
                        "Log Out",
                        style: TextStyle(fontSize: 20, color: Color(0xff171717)),
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 50,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
