import 'package:flutter/material.dart';
import 'package:my_app/view/Login%20with%20Shared%20pref/chat%20GPT%20code/home_screen_gpt.dart';
import 'package:my_app/view/Login%20with%20Shared%20pref/chat%20GPT%20code/login_screen_gpt.dart';
import 'package:shared_preferences/shared_preferences.dart';


class SplashScreenGpt extends StatefulWidget {
  const SplashScreenGpt({super.key});

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreenGpt> {
  bool isLoggedIn = false;

  @override
  void initState() {
    super.initState();
    checkLoginStatus();
  }

  void checkLoginStatus() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    bool? loggedIn = prefs.getBool('loggedIn');
    if (loggedIn != null && loggedIn) {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const HomeScreenGpt()),
      );
    } else {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => LoginScreenGpt()),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Center(child: CircularProgressIndicator()));
  }
}
