import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class QuizeApp extends StatefulWidget {
  const QuizeApp({super.key});

  @override
  State<QuizeApp> createState() => _QuizeAppState();
}

class _QuizeAppState extends State<QuizeApp> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration( color: Colors.blueGrey,
                  borderRadius: BorderRadius.circular(20)
                ),
                height: 100,
                width: 350,
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: CircleAvatar(
                        radius: 40,
                        backgroundImage: AssetImage("assets/image/flower pic.jpeg"),
                      ),
                    ),
                    Column(
                      children: [
                        Row(
                          children: [
                            Text("সর্বশেষ স্কোর-)",style: TextStyle(fontSize: 18),),
                            Text(" 10(সৃষ্টিকর্তা)",style: TextStyle(fontSize: 18)),
                          ],
                        )
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
