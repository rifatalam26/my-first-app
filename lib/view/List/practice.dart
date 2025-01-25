import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../profile ui/profile.dart';

class practice extends StatefulWidget {
  const practice({super.key});

  @override
  State<practice> createState() => _practiceState();
}

class _practiceState extends State<practice> {
  TextEditingController dataController = TextEditingController();

  List<String> list = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Md Rifat Alam",
          style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              TextField(
                controller: dataController,
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: BorderSide(color: Colors.grey, width: 3)),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: BorderSide(color: Colors.blue, width: 3)),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        list.add("${dataController.text}");
                      });
                    },
                    child: Card(
                      color: Colors.blue,
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Text(
                          "Input data",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                  Spacer(),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        dataController.clear();
                      });
                    },
                    child: Card(
                      color: Colors.blue,
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Text(
                          "Clear",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                  Spacer(),
                  GestureDetector(
                    onTap: () {
                      Get.to(Profile());
                    },
                    child: Card(
                      color: Colors.blue,
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Text(
                          "Next",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Divider(
                color: Colors.grey,
                thickness: 3,
              ),
              ListView.builder(
                  shrinkWrap: true,
                  itemCount: list.length,
                  itemBuilder: (context, index) {
                    return Center(
                      child: Card(
                        color: Colors.blue,
                        child: Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Text("${list[index]}"),
                        ),

                      ),
                    );
                  }),
              Divider(
                color: Colors.grey,
                thickness: 3,
              ),
              SizedBox(
                height: 200,
                width: 200,
                child:Card(
                 // color: Colors.blue,
                  child: Image.asset("asset/image/FB_IMG.jpg")
                ) ,
              )
            ],
          ),
        ),
      ),
    );
  }
}


