import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class OrdersScreen extends StatefulWidget {
  const OrdersScreen({super.key});

  @override
  State<OrdersScreen> createState() => _OrdersScreenState();
}

class _OrdersScreenState extends State<OrdersScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage("assets/image/background image7.png"))),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Icon(
                    Icons.arrow_back_outlined,
                    size: 30,
                  ),
                  Text(
                    "Orders",
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  )
                ],
              ),
            ),
            Row(
              children: [
                SizedBox(
                  width: 20,
                ),
                Text(
                  "Wash & Iron",
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Color(0xff0A51EB),),
                ),
              ],
            ),
            Row(
              children: [
                SizedBox(
                  width: 16,
                ),
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Container(
                    height: 70,
                    width: 70,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15),
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage("assets/image/Dry t-shirt.png"))),
                    //  child: Image(image: AssetImage("assets/image/Rectangle 66.png"))
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "T-Shirt",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color:  Color(0xff0A51EB),),
                    ),
                    Text(
                      "Rs.30",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  width: 100,
                ),
                Container(
                  height: 30,
                  width: 80,
                  decoration: BoxDecoration(
                      color: Color(0xff0A51EB),
                      borderRadius: BorderRadius.circular(30)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.remove,
                        color: Colors.white,
                      ),
                      Text(
                        "1",
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                      Icon(
                        Icons.add,
                        color: Colors.white,
                      )
                    ],
                  ),
                )
              ],
            ), // 1
            Row(
              children: [
                SizedBox(
                  width: 16,
                ),
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Container(
                    height: 70,
                    width: 70,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15),
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage("assets/image/dress.png"))),
                    //  child: Image(image: AssetImage("assets/image/Rectangle 66.png"))
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Dress",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color:  Color(0xff0A51EB),),
                    ),
                    Text(
                      "Rs.60",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  width: 100,
                ),
                Container(
                  height: 30,
                  width: 80,
                  decoration: BoxDecoration(
                      color: Color(0xff0A51EB),
                      borderRadius: BorderRadius.circular(30)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.remove,
                        color: Colors.white,
                      ),
                      Text(
                        "2",
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                      Icon(
                        Icons.add,
                        color: Colors.white,
                      )
                    ],
                  ),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Container(
                height: 40,
                width: 300,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30),
                    border: Border.all(width: 2, color: Colors.blueAccent)),
                child: Center(
                  child: Text(
                    "Total     Rs.110",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Color(0xff0A51EB)),
                  ),
                ),
              ),
            ),
            Row(
              children: [
                SizedBox(
                  width: 23,
                ),
                Text(
                  "Instarction",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                      color: Color(0xff0A51EB),),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            SizedBox(
              height: 50,
              width: 300,
              child: TextFormField(
                decoration: InputDecoration(
                    hintText: "Add Instraction",
                    hintStyle: TextStyle(color: Colors.grey.shade400),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide:
                            BorderSide(width: 2, color: Colors.blueAccent)),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide:
                            BorderSide(width: 2, color: Colors.blueAccent))),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                SizedBox(
                  width: 23,
                ),
                Text(
                  "Picup",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                      color:  Color(0xff0A51EB),),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Nov,13,2019",
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.blueAccent),
                ),
                SizedBox(
                  width: 110,
                ),
                Text(
                  "5:00 to 6:00pm",
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.blueAccent),
                ),
              ],
            ),
            SizedBox(
              height: 40,
            ),
            Row(
              children: [
                SizedBox(
                  width: 23,
                ),
                Text(
                  "Delivered by",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                      color:  Color(0xff0A51EB),),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Nov,13,2019",
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.blueAccent),
                ),
                SizedBox(
                  width: 220,
                ),
              ],
            ),
            SizedBox(
              height: 50,
            ),
            Container(
              height: 40,
              width: 150,
              child: Center(
                child: Text(
                  "Pleace Order",
                  style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              ),
              decoration: BoxDecoration(
                  color: Color(0xff0A51EB),
                  borderRadius: BorderRadius.circular(30)),
            )
          ],
        ),
      ),
    );
  }
}
