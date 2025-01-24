import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class practice extends StatefulWidget {
  const practice({super.key});

  @override
  State<practice> createState() => _practiceState();
}

class _practiceState extends State<practice> {
  TextEditingController dataController=TextEditingController();

  List<String> list=[];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
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
            SizedBox(height: 10,),
            GestureDetector(
              onTap: (){
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
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
            Divider(
              color: Colors.grey,
              thickness: 3,
            ),
            ListView.builder(
                shrinkWrap: true,
                itemCount:list.length ,
                itemBuilder: (context,index){
              return Center(
                child: Card(
                  color: Colors.blue,
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Text("${list[index]}"),
                  ),
                ),
              );
            })
          ],
        ),
      ),
    );
  }
}
