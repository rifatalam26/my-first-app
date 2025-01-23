import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ListItemAdd extends StatefulWidget {
  const ListItemAdd({super.key});

  @override
  State<ListItemAdd> createState() => _ListItemAddState();
}

class _ListItemAddState extends State<ListItemAdd> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: TextField(
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: BorderSide(color: Colors.grey, width: 3)),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.blue,width: 3,
                  ),borderRadius: BorderRadius.circular(30),
                )
              ),
            ),
          )
        ],
      ),
    );
  }
}
