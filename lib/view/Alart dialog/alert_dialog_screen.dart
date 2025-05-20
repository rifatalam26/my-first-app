import 'package:flutter/material.dart';

class AlertDialogScreen extends StatefulWidget {
  const AlertDialogScreen({super.key});

  @override
  State<AlertDialogScreen> createState() => _AlertDialogScreenState();
}

class _AlertDialogScreenState extends State<AlertDialogScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child:  InkWell(
              onTap: () {
                showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        title: Column(
                          children: [
                            const Text(
                              "Paste your music link below and",
                              style: TextStyle(fontSize: 16),
                            ),
                            const Text(
                              "hit save to finalize your ",
                              style: TextStyle(fontSize: 16),
                            ),
                            const Text(
                              "selection!",
                              style: TextStyle(fontSize: 16),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            TextFormField(
                              decoration: InputDecoration(
                                  hintText: "Paste Link",
                                  hintStyle:
                                  TextStyle(color: Colors.grey.shade400),
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(8),
                                    // borderSide: BorderSide(color: )
                                  ),
                                  border: OutlineInputBorder(
                                      borderRadius:
                                      BorderRadius.circular(8))),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Container(
                              height: 53,
                              width: 331,
                              decoration: BoxDecoration(
                                  color: const Color(0xff7DBABB),
                                  borderRadius: BorderRadius.circular(8)),
                              child: const Center(
                                child: Text(
                                  "Save",
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            InkWell(
                              onTap: () {
                               // Get.to(const WeddingCeremonyMusicPage2());
                              },
                              child: Container(
                                height: 53,
                                width: 331,
                                decoration: const BoxDecoration(
                                    border: Border(
                                      top: BorderSide(
                                          width: 1, color: Color(0xff7DBABB)),
                                      bottom: BorderSide(
                                          width: 1, color: Color(0xff7DBABB)),
                                      left: BorderSide(
                                          width: 1, color: Color(0xff7DBABB)),
                                      right: BorderSide(
                                          width: 1, color: Color(0xff7DBABB)),
                                    ),
                                    borderRadius:
                                    BorderRadius.all(Radius.circular(8))),
                                child: const Center(
                                    child: Text(
                                      "Cancel",
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold,
                                          color: Color(0xff7DBABB)),
                                    )),
                              ),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                          ],
                        ),
                      );
                    });
              },
              child: Container(
                height: 53,
                width: 331,
                decoration: BoxDecoration(
                    color: const Color(0xff7DBABB),
                    borderRadius: BorderRadius.circular(8)),
                child: const Center(
                  child: Text(
                    "Save",
                    style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
