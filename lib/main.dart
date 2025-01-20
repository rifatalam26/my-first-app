import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_app/view/notification/notification_screen.dart';
import 'package:my_app/view/ui%20design/first_ui.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home:NotificationScreen(),
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


