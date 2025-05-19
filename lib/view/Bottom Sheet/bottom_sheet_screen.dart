import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class BottomSheetScreen extends StatefulWidget {
  const BottomSheetScreen({super.key});

  @override
  State<BottomSheetScreen> createState() => _BottomSheetScreenState();
}

class _BottomSheetScreenState extends State<BottomSheetScreen> {
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
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
                  Get.to(_showBottomSheet(context));
                },
                child: const Text("Tap Here"))
          ],
        ),
      ),
    );
  }
}
