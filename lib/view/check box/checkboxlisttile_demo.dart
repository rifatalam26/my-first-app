import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CheckboxlisttileDemo extends StatefulWidget {
  const CheckboxlisttileDemo({super.key});

  @override
  State<CheckboxlisttileDemo> createState() => _CheckboxlisttileDemoState();
}

class _CheckboxlisttileDemoState extends State<CheckboxlisttileDemo> {
  bool android = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 1,
        title: Text(
          "CheckBox Listtile Demo",
          style: TextStyle(fontSize: 21, fontWeight: FontWeight.bold),
        ),
        shadowColor: Colors.red,
      ),
      body: Column(
        children: [
          ListTile(
              leading: Padding(
            padding: const EdgeInsets.all(8.0),
            child: CircleAvatar(
              radius: 30,
              backgroundImage: AssetImage("assets/image/android_image.png"),
            ),
          ),
          title: Text("Android",style: TextStyle(fontWeight: FontWeight.bold),),
            trailing: Checkbox(value: false, onChanged: (val){}),
          ),
          
        ],
      ),
    );
  }
}
