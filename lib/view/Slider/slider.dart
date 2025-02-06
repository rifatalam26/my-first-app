import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class SliserScreen extends StatefulWidget {
  const SliserScreen({super.key});

  @override
  State<SliserScreen> createState() => _SliserScreenState();
}

class _SliserScreenState extends State<SliserScreen> {
  // List image = [
  //   Image.network(
  //       "https://thumbs.dreamstime.com/b/generated-image-country-road-mountains-summer-foggy-morning-nature-background-landscape-green-trees-grass-hill-330706557.jpg"),
  //   Image.network(
  //       "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQUPIfiGgUML8G3ZqsNLHfaCnZK3I5g4tJabQ&s"),
  //   Image.network(
  //       "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQkqiYUmvFaIwvoBs0vU2cJLRk8qWZAhZ165w&s"),
  //   Image.network(
  //       "https://i0.wp.com/picjumbo.com/wp-content/uploads/beautiful-fall-nature-scenery-free-image.jpeg?w=600&quality=80"),
  //   Image.network(
  //       "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSvcjGWJ4e1djpMb9txVS_52mTZH3GsXspI9Q&s"),
  // ];
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
      body: Column(
        children: [
          SizedBox(
            height: 200,
            width: double.infinity,
            child: CarouselSlider(
                items: [
                  Image.network(
                      "https://marketingweek.imgix.net/content/uploads/2016/07/29160619/internet-ad.png"),
                  Image.network(
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT0HvAKzyg3o-LEUV-X702v_bAqMR8uAgwwSQ&s"),
                  Image.network(
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQQlQgBYHc-oK1CtI_SeIkYNHT0UWkIaPLQCQ&s"),
                  Image.network(
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSOknol9nRFtMWUZL1P9e6doSf7FMHNTqXM4gDkm7RyEZEsGSEE7j_5e34c-bcHcZ0fgQE&usqp=CAU"),
                  Image.network(
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSwfqWaTQAcRg52Gu0TbpQQJ99qNc75Is-ZjQ&s"),
                  Image.network(
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTRepqXJOe1XyqbdHfeJrXICrjevdUv3jsasfQKV1VEgtxmw-6OxRriD4zbNiHlQ6KDagw&usqp=CAU"),
                  Image.network(
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSqs4W_9BHPMJI_c6hfgAlgbeE1HuzLo9VV-E5mLCwZRfTIAaKf8NKhQRSppZMBdATI1zo&usqp=CAU"),
                ],
                options:
                    CarouselOptions(autoPlay: true,
                        //enlargeCenterPage: true,
                      autoPlayInterval: Duration(seconds: 2,)
                    )),
          )
        ],
      ),
    );
  }
}
