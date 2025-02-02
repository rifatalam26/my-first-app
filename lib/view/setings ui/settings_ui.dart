import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SettingScreen extends StatefulWidget {
  const SettingScreen({super.key});

  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Card(
        child: Column(
          children: [
            Row(
              children: [
                Icon(
                  Icons.arrow_back,
                ),
                SizedBox(
                  width: 180,
                ),
                Text(
                  "Settings",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(40.0),
              child: TextField(
                decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5)),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5)),
                    hintText: "Search for setting...",
                    hintStyle: TextStyle(color: Colors.grey),
                    prefixIcon: Icon(
                      Icons.search,
                      color: Colors.grey,
                    )),
              ),
            ),
            Container(
              child: SizedBox(
                height: 400,
                width: 420,
                child: Column(
                  children: [
                    ListTile(
                      leading: Icon(Icons.person_outline),
                      title: Text(
                        "Account",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      trailing: Icon(Icons.arrow_forward_ios),
                    ),
                    Divider(
                      thickness: 0.3,
                      color: Colors.grey,
                    ),
                    ListTile(
                      leading: Icon(Icons.notifications_none),
                      title: Text(
                        "Notifications",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      trailing: Icon(Icons.arrow_forward_ios),
                    ),
                    Divider(
                      thickness: 0.3,
                      color: Colors.grey,
                    ),
                    ListTile(
                      leading: Icon(Icons.remove_red_eye_outlined),
                      title: Text(
                        "Appearance",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      trailing: Icon(Icons.arrow_forward_ios),
                    ),
                    Divider(
                      thickness: 0.3,
                      color: Colors.grey,
                    ),
                    ListTile(
                      leading: Icon(Icons.lock_rounded),
                      title: Text(
                        "Privacy & Security",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      trailing: Icon(Icons.arrow_forward_ios),
                    ),
                    Divider(
                      thickness: 0.3,
                      color: Colors.grey,
                    ),
                    ListTile(
                      leading: Icon(Icons.headphones),
                      title: Text(
                        "Help & Support",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      trailing: Icon(Icons.arrow_forward_ios),
                    ),
                    Divider(
                      thickness: 0.3,
                      color: Colors.grey,
                    ),
                    ListTile(
                      leading: Icon(Icons.build_circle_sharp),
                      title: Text(
                        "About",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      trailing: Icon(Icons.arrow_forward_ios),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
