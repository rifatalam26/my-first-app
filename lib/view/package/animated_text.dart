import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class AnimatedText extends StatefulWidget {
  const AnimatedText({super.key});

  @override
  State<AnimatedText> createState() => _AnimatedTextState();
}

class _AnimatedTextState extends State<AnimatedText> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Md Rifaty Alam"),
        backgroundColor: Colors.blue,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: SizedBox(
              width: 300.0,
              child: TextLiquidFill(
                text: 'LIQUIDY',
                waveColor: Colors.blueAccent,
                boxBackgroundColor: Colors.redAccent,
                textStyle: TextStyle(
                  fontSize: 80.0,
                  fontWeight: FontWeight.bold,
                ),
                boxHeight: 200.0,
              ),
            ),
          ),
          Container(
            height: 200,
            width: 300,
            color: Colors.yellow,
            child: DefaultTextStyle(
              style: const TextStyle(
                fontSize: 20.0,
              ),
              child: Center(
                child: AnimatedTextKit(
                  animatedTexts: [
                    WavyAnimatedText('Hello World'),
                    WavyAnimatedText('Look at the waves'),
                  ],
                  isRepeatingAnimation: true,
                  onTap: () {
                    print("Tap Event");
                  },
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
