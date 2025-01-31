import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CheckboxlisttileDemo extends StatefulWidget {
  const CheckboxlisttileDemo({super.key});

  @override
  State<CheckboxlisttileDemo> createState() => _CheckboxlisttileDemoState();
}

class _CheckboxlisttileDemoState extends State<CheckboxlisttileDemo> {
  bool android = false;
  bool flutter = false;
  bool ios = false;
  bool php = false;
  bool node = false;
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
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: Container(
              color: Colors.white,
              child: ListTile(
                leading: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CircleAvatar(
                    radius: 30,
                    backgroundImage:
                        AssetImage("assets/image/android_image.png"),
                  ),
                ),
                title: Text(
                  "Android",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                trailing: Checkbox(
                    value: android,
                    onChanged: (val) {
                      setState(() {
                        android = val!;
                      });
                    }),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              color: Colors.white,
              child: ListTile(
                leading: Padding(
                  padding: const EdgeInsets.all(11.0),
                  child: Image.asset("assets/image/transparent-flutter.png"),
                ),
                title: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Text(
                    "Flutter",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                trailing: Checkbox(
                    value: flutter,
                    onChanged: (val) {
                      setState(() {
                        flutter = val!;
                      });
                    }),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              color: Colors.white,
              child: ListTile(
                leading: SizedBox(
                    height: 40,
                    width: 40,
                    child: Image.asset("assets/image/ios_image.png")),
                title: Text(
                  "IOS",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                trailing: Checkbox(
                    value: ios,
                    onChanged: (val) {
                      setState(() {
                        ios = val!;
                      });
                    }),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              color: Colors.white,
              child: ListTile(
                leading: CircleAvatar(
                  radius: 20,
                  backgroundImage: AssetImage("assets/image/php_images.png"),
                ),
                title: Text(
                  "PHP",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                trailing: Checkbox(
                    value: php,
                    onChanged: (val) {
                      setState(() {
                        php = val!;
                      });
                    }),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              color: Colors.white,
              child: ListTile(
                leading: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset("assets/image/download.png"),
                ),
                title: Text(
                  "Node",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                trailing: Checkbox(
                    value: node,
                    onChanged: (val) {
                      setState(() {
                        node = val!;
                      });
                    }),
              ),
            ),
          ),
          // Divider(
          //   thickness: 2,
          //   color: Colors.grey,
          // )
        ],
      ),
    );
  }
}
