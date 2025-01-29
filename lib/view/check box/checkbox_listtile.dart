import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CheckBoxListtile extends StatefulWidget {
  const CheckBoxListtile({super.key});

  @override
  State<CheckBoxListtile> createState() => _CheckBoxListtileState();
}

class _CheckBoxListtileState extends State<CheckBoxListtile> {
  bool sun = false;
  bool mon = false;
  bool tue = false;
  bool wed = false;
  bool thu = false;
  bool fri = false;
  bool sat = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: Text(
          "CheckBox ListTile",
          style: TextStyle(
              fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CheckboxListTile(
            value: sun,
            onChanged: (val) {
              setState(() {
                sun = val!;
              });
            },
            activeColor: Colors.deepPurple,
            title: Text(
              "Sun Day",
              style: TextStyle(fontSize: 20),
            ),
            subtitle: Text("day1"),
          ),
          CheckboxListTile(
            value: mon,
            onChanged: (val) {
              setState(() {
                mon = val!;
              });
            },
            activeColor: Colors.deepPurple,
            title: Text(
              "Mon Day",
              style: TextStyle(fontSize: 20),
            ),
            subtitle: Text("day2"),
          ),
          CheckboxListTile(
            value: tue,
            onChanged: (val) {
              setState(() {
                tue = val!;
              });
            },
            activeColor: Colors.deepPurple,
            title: Text(
              "Tues Day",
              style: TextStyle(fontSize: 20),
            ),
            subtitle: Text("day3"),
          ),
          CheckboxListTile(
            value: wed,
            onChanged: (val) {
              setState(() {
                wed = val!;
              });
            },
            activeColor: Colors.deepPurple,
            title: Text(
              "Wedness Day",
              style: TextStyle(fontSize: 20),
            ),
            subtitle: Text("day4"),
          ),
          CheckboxListTile(
            value: thu,
            onChanged: (val) {
              setState(() {
                thu = val!;
              });
            },
            activeColor: Colors.deepPurple,
            title: Text(
              "Thurs Day",
              style: TextStyle(fontSize: 20),
            ),
            subtitle: Text("day5"),
          ),
          CheckboxListTile(
            value: fri,
            onChanged: (val) {
              setState(() {
                fri = val!;
              });
            },
            activeColor: Colors.deepPurple,
            title: Text(
              "Fri Day",
              style: TextStyle(fontSize: 20),
            ),
            subtitle: Text("day6"),
          ),
          CheckboxListTile(
            value: sat,
            onChanged: (val) {
              setState(() {
                sat = val!;
              });
            },
            activeColor: Colors.deepPurple,
            title: Text(
              "Sater Day",
              style: TextStyle(fontSize: 20),
            ),
            subtitle: Text("day7"),
          ),
        ],
      ),
    );
  }
}
