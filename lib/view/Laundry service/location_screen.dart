import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LocationScreen extends StatefulWidget {
  const LocationScreen({super.key});

  @override
  State<LocationScreen> createState() => _LocationScreenState();
}

class _LocationScreenState extends State<LocationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: 500,
        decoration: BoxDecoration(
            image: DecorationImage(fit: BoxFit.cover,
                image: AssetImage("assets/image/background4.png"))),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 200,
              width: 200,
              child: Image(image: AssetImage("assets/image/earth_image.png")),
            ),
            Text("We are available",
              style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.white),),
            Text("in every Location",
              style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.white),),
            SizedBox(
              height: 30,
            ),
            Container(
              height: 50,
              width: 330,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: Colors.white
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Savitribhai Phule University,Shivagi Nagar",
                    style: TextStyle(fontWeight: FontWeight.bold),),
                  Icon(Icons.location_on_rounded,color: Colors.blueAccent,)
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Text("Use Current Location",
              style: TextStyle(fontWeight: FontWeight.bold,color: Colors.blueAccent),),
            SizedBox(
              height: 30,
            ),
            Container(
              height: 50,
              width: 150,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: Colors.blueAccent
              ),
              child: Center(
                child: Text("Add Address +",
                  style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.white),),
              ),
            )
          ],
        ),
        ),
    );
  }
}
