import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:image_picker/image_picker.dart';
import 'package:my_app/view/List/Add_item_to_list.dart';
import 'package:my_app/view/List/practice.dart';
import 'package:my_app/view/Slider/slider.dart';
import 'package:my_app/view/botom%20nav%20bar/bottom_nav_bar.dart';
import 'package:my_app/view/bottom%20nav%20bar/bottom_nav_bar.dart';
import 'package:my_app/view/check%20box/check_box%20ui.dart';
import 'package:my_app/view/check%20box/checkbox_listtile.dart';
import 'package:my_app/view/check%20box/checkboxlisttile_demo.dart';
import 'package:my_app/view/color%20test/color_test.dart';
import 'package:my_app/view/google%20font/custom_font.dart';
import 'package:my_app/view/google%20font/google_font.dart';
import 'package:my_app/view/notification/notification_screen.dart';
import 'package:my_app/view/package/animated_text.dart';
import 'package:my_app/view/package/image_picker.dart';
import 'package:my_app/view/setings%20ui/settings_ui.dart';
import 'package:my_app/view/ui%20design/first_ui.dart';
import 'package:my_app/view/profile%20ui/profile.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: SliserScreen (),
    );
  }
}

// class HomePage extends StatefulWidget {
//   const HomePage({super.key});
//
//   @override
//   State<HomePage> createState() => _HomePageState();
// }
//
// class _HomePageState extends State<HomePage> {
//
//  //  TextEditingController emailController=TextEditingController();
//  //  TextEditingController passwordController=TextEditingController();
//  //
//  // String email = "mdrftlm@gmail.com";
//  // int password =12345;
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         // appBar: AppBar(
//         //   title: Text(
//         //     "Appber",
//         //     style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
//         //   ),
//         //   actions: [Icon(Icons.account_circle_outlined)],
//         //   backgroundColor: Colors.indigoAccent,
//         //   foregroundColor: Colors.white,
//         //   centerTitle: true,
//         //   shape: RoundedRectangleBorder(
//         //       borderRadius: BorderRadius.only(
//         //           bottomLeft: Radius.circular(30),
//         //           bottomRight: Radius.circular(30))),
//         // ),
//         // drawer: Drawer(),
//
//     //     body: Padding(
//     //   padding: const EdgeInsets.all(30.0),
//     //   child: Center(
//     //     child: Column(
//     //       mainAxisAlignment: MainAxisAlignment.center,
//     //       children: [
//     //         TextField(
//     //           controller: emailController,
//     //           decoration: InputDecoration(
//     //               labelText: "Email",
//     //               hintText: "abcd.@gmail.com",
//     //               suffixIcon: Icon(Icons.email),
//     //               focusedBorder: OutlineInputBorder(
//     //                 borderRadius: BorderRadius.circular(10),
//     //                 borderSide: BorderSide(color: Colors.lightBlue, width: 3),
//     //               ),
//     //               enabledBorder: OutlineInputBorder(
//     //                   borderRadius: BorderRadius.circular(10),
//     //                   borderSide:
//     //                       BorderSide(color: Colors.blueGrey, width: 3))),
//     //         ),
//     //         SizedBox(
//     //           height: 15,
//     //         ),
//     //         TextField(
//     //           controller: passwordController,
//     //           decoration: InputDecoration(
//     //               labelText: "Password",
//     //               hintText: "********",
//     //               suffixIcon: Icon(Icons.remove_red_eye),
//     //               focusedBorder: OutlineInputBorder(
//     //                 borderRadius: BorderRadius.circular(10),
//     //                 borderSide: BorderSide(color: Colors.lightBlue, width: 3),
//     //               ),
//     //               enabledBorder: OutlineInputBorder(
//     //                   borderRadius: BorderRadius.circular(10),
//     //                   borderSide:
//     //                       BorderSide(color: Colors.blueGrey, width: 3))),
//     //         ),
//     //         SizedBox(
//     //           height: 15,
//     //         ),
//     //         GestureDetector(
//     //           onTap: () {
//     //             if (emailController.text==email &&
//     //                int.parse(passwordController.text.toString())==password) {
//     //               // Navigator.push(context,
//     //               //     MaterialPageRoute(builder: (context) => home_screen()));
//     //               Get.to(home_screen());
//     //
//     //             } else {
//     //               ScaffoldMessenger.of(context).showSnackBar(
//     //                   SnackBar(content: Text("wrong information")));
//     //             }
//     //           },
//     //           child: Card(
//     //             color: Colors.blue,
//     //             child: Row(
//     //               mainAxisAlignment: MainAxisAlignment.center,
//     //               children: [
//     //                 Padding(
//     //                   padding: const EdgeInsets.all(10.0),
//     //                   child: Text(
//     //                     "Login",
//     //                     style: TextStyle(
//     //                         fontSize: 20,
//     //                         fontWeight: FontWeight.bold,
//     //                         color: Colors.white),
//     //                   ),
//     //                 )
//     //               ],
//     //             ),
//     //           ),
//     //         )
//     //       ],
//     //     ),
//     //   ),
//     // ),
//     );
//   }
// }
