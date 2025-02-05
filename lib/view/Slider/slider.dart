import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class SliserScreen extends StatefulWidget {
  const SliserScreen({super.key});

  @override
  State<SliserScreen> createState() => _SliserScreenState();
}

class _SliserScreenState extends State<SliserScreen> {
  List image = [
    Image.network(
        "https://thumbs.dreamstime.com/b/generated-image-country-road-mountains-summer-foggy-morning-nature-background-landscape-green-trees-grass-hill-330706557.jpg"),
    Image.network(
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQUPIfiGgUML8G3ZqsNLHfaCnZK3I5g4tJabQ&s"),
    Image.network(
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQkqiYUmvFaIwvoBs0vU2cJLRk8qWZAhZ165w&s"),
    Image.network(
        "https://i0.wp.com/picjumbo.com/wp-content/uploads/beautiful-fall-nature-scenery-free-image.jpeg?w=600&quality=80"),
    Image.network(
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSvcjGWJ4e1djpMb9txVS_52mTZH3GsXspI9Q&s"),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        centerTitle: true,
        title: Text(
          "Slider",
          style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              fontFamily: "FontName"),
        ),
      ),
      body: Center(
        child: Column(
          children: [
            CarouselSlider(items: image[0],
                options: CarouselOptions(
                  initialPage: 0,
                  autoPlay: true
                ))
          ],
        ),
      ),
    );
  }
}
