import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ListItemAdd extends StatefulWidget {
  const ListItemAdd({super.key});

  @override
  State<ListItemAdd> createState() => _ListItemAddState();
}

class _ListItemAddState extends State<ListItemAdd> {
  TextEditingController datacontroller=TextEditingController();

  List<String> list=[];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: TextField(
                controller: datacontroller,
                decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: BorderSide(color: Colors.grey, width: 3)),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.blue,
                        width: 3,
                      ),
                      borderRadius: BorderRadius.circular(30),
                    )),
              ),
            ),
            GestureDetector(
              onTap: (){
               setState(() {
                 list.add(datacontroller.text);
               });
              },
              child: Card(
                color: Colors.blue,
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Text(
                    "Add to List",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
            Divider(
              thickness: 3,
              color: Colors.grey,
            ),
            ListView.builder(
              itemCount: list.length,
                shrinkWrap: true,
                itemBuilder: (context, index) {
              return Center(
                child: Card(
                  color: Colors.blue,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(list[index]),
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
