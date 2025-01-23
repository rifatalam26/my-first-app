
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
             TextField(

             )
            ],
          ),
        );
      }
    }




