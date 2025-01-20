import 'package:flutter/material.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          ListTile(
            leading: Icon(Icons.menu),
            title: Text("Notifications",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
            trailing: Icon(Icons.notifications_none,size: 30,),
          )
        ],
      )
    );
  }
}
