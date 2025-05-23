import 'package:flutter/material.dart';
import 'package:my_app/view/Login%20with%20Shared%20pref/chat%20GPT%20code/home_screen_gpt.dart';
import 'package:shared_preferences/shared_preferences.dart';


class LoginScreenGpt extends StatelessWidget {
  final TextEditingController userController = TextEditingController();
  final TextEditingController passController = TextEditingController();

  LoginScreenGpt({super.key});

  void login(BuildContext context) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setBool('loggedIn', true);
    // Simple login check
    if (userController.text == 'admin' && passController.text == '1234') {

      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const HomeScreenGpt()),
      );
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Invalid credentials')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Login')),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            TextField(controller: userController, decoration: InputDecoration(labelText: 'Username')),
            TextField(controller: passController, obscureText: true, decoration: InputDecoration(labelText: 'Password')),
            SizedBox(height: 20),
            ElevatedButton(onPressed: () => login(context), child: Text('Login')),
          ],
        ),
      ),
    );
  }
}
