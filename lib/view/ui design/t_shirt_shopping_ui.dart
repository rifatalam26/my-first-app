import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TShirtShoppingUiScreen extends StatefulWidget {
  const TShirtShoppingUiScreen({super.key});

  @override
  State<TShirtShoppingUiScreen> createState() => _TShartShoppingUiScreenState();
}

class _TShartShoppingUiScreenState extends State<TShirtShoppingUiScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Container(
                      height: 40,
                      width: 40,
                      child: Icon(
                        Icons.arrow_back_ios_new_outlined,
                        size: 30,
                        color: Colors.grey,
                      ),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10)),
                    ),
                  ),
                  Text(
                    "T-Shirt Shop",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Container(
                      height: 40,
                      width: 40,
                      child: Icon(
                        Icons.menu,
                        size: 30,
                        color: Colors.grey,
                      ),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10)),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Container(
                      height: 200,
                      width: 150,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(8)),
                      child:  Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset("assets/image/t-shart_1-removebg-preview.png"),
                          Text("T-Shart polo"),
                          Text("450",style: TextStyle(color: Colors.red),),
                          Container(
                            height: 25,
                            width: 70,
                            child: Center(child: Text("Buy Now",style: TextStyle(color: Colors.white),)),
                            decoration: BoxDecoration(
                                color: Colors.red,
                                borderRadius: BorderRadius.circular(8)),
                          )
                        ],
                      ),
                      ),
                    ),
                  Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Container(
                        height: 200,
                        width: 150,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(8)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset("assets/image/t-shart_2-removebg-preview.png"),
                            Text("T-Shart polo"),
                            Text("260",style: TextStyle(color: Colors.red),),
                            Container(
                              height: 25,
                              width: 70,
                              child: Center(child: Text("Buy Now",style: TextStyle(color: Colors.white),)),
                              decoration: BoxDecoration(
                                  color: Colors.red,
                                  borderRadius: BorderRadius.circular(8)),
                            )
                          ],
                        ),
                      )),
                ],
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Container(
                      height: 215,
                      width: 150,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(8)),
                      child:  Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset("assets/image/t-shart_5-removebg-preview.png"),
                          Text("T-Shart polo"),
                          Text("350",style: TextStyle(color: Colors.red),),
                          Container(
                            height: 25,
                            width: 70,
                            child: Center(child: Text("Buy Now",style: TextStyle(color: Colors.white),)),
                            decoration: BoxDecoration(
                                color: Colors.red,
                                borderRadius: BorderRadius.circular(8)),
                          )
                        ],
                      ),
                    ),
                  ),
                  Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Container(
                        height: 215,
                        width: 150,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(8)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset("assets/image/t-shart_4-removebg-preview.png"),
                            Text("T-Shart polo"),
                            Text("350",style: TextStyle(color: Colors.red),),
                            Container(
                              height: 25,
                              width: 70,
                              child: Center(child: Text("Buy Now",style: TextStyle(color: Colors.white),)),
                              decoration: BoxDecoration(
                                  color: Colors.red,
                                  borderRadius: BorderRadius.circular(8)),
                            )
                          ],
                        ),
                      )),
                ],
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Container(
                      height: 215,
                      width: 150,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(8)),
                      child:  Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset("assets/image/t-shart_3-removebg-preview.png"),
                          Text("T-Shart polo"),
                          Text("300",style: TextStyle(color: Colors.red),),
                          Container(
                            height: 25,
                            width: 70,
                            child: Center(child: Text("Buy Now",style: TextStyle(color: Colors.white),)),
                            decoration: BoxDecoration(
                                color: Colors.red,
                                borderRadius: BorderRadius.circular(8)),
                          )
                        ],
                      ),
                    ),
                  ),
                  Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Container(
                        height: 220,
                        width: 150,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(8)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset("assets/image/Tshart7_-_Copy-removebg-preview.png"),
                            Text("T-Shart polo"),
                            Text("400",style: TextStyle(color: Colors.red),),
                            Container(
                              height: 25,
                              width: 70,
                              child: Center(child: Text("Buy Now",style: TextStyle(color: Colors.white),)),
                              decoration: BoxDecoration(
                                  color: Colors.red,
                                  borderRadius: BorderRadius.circular(8)),
                            )
                          ],
                        ),
                      )),
                ],
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Container(
                      height: 200,
                      width: 150,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(8)),
                      child:  Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset("assets/image/t-shart_1-removebg-preview.png"),
                          Text("T-Shart polo"),
                          Text("450",style: TextStyle(color: Colors.red),),
                          Container(
                            height: 25,
                            width: 70,
                            child: Center(child: Text("Buy Now",style: TextStyle(color: Colors.white),)),
                            decoration: BoxDecoration(
                                color: Colors.red,
                                borderRadius: BorderRadius.circular(8)),
                          )
                        ],
                      ),
                    ),
                  ),
                  Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Container(
                        height: 200,
                        width: 150,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(8)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset("assets/image/t-shart_2-removebg-preview.png"),
                            Text("T-Shart polo"),
                            Text("450",style: TextStyle(color: Colors.red),),
                            Container(
                              height: 25,
                              width: 70,
                              child: Center(child: Text("Buy Now",style: TextStyle(color: Colors.white),)),
                              decoration: BoxDecoration(
                                  color: Colors.red,
                                  borderRadius: BorderRadius.circular(8)),
                            )
                          ],
                        ),
                      )),
                ],
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Container(
                      height: 200,
                      width: 150,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(8)),
                      child:  Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset("assets/image/t-shart_1-removebg-preview.png"),
                          Text("T-Shart polo"),
                          Text("450",style: TextStyle(color: Colors.red),),
                          Container(
                            height: 25,
                            width: 70,
                            child: Center(child: Text("Buy Now",style: TextStyle(color: Colors.white),)),
                            decoration: BoxDecoration(
                                color: Colors.red,
                                borderRadius: BorderRadius.circular(8)),
                          )
                        ],
                      ),
                    ),
                  ),
                  Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Container(
                        height: 200,
                        width: 150,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(8)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset("assets/image/t-shart_2-removebg-preview.png"),
                            Text("T-Shart polo"),
                            Text("450",style: TextStyle(color: Colors.red),),
                            Container(
                              height: 25,
                              width: 70,
                              child: Center(child: Text("Buy Now",style: TextStyle(color: Colors.white),)),
                              decoration: BoxDecoration(
                                  color: Colors.red,
                                  borderRadius: BorderRadius.circular(8)),
                            )
                          ],
                        ),
                      )),
                ],
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Container(
                      height: 200,
                      width: 150,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(8)),
                      child:  Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset("assets/image/t-shart_1-removebg-preview.png"),
                          Text("T-Shart polo"),
                          Text("450",style: TextStyle(color: Colors.red),),
                          Container(
                            height: 25,
                            width: 70,
                            child: Center(child: Text("Buy Now",style: TextStyle(color: Colors.white),)),
                            decoration: BoxDecoration(
                                color: Colors.red,
                                borderRadius: BorderRadius.circular(8)),
                          )
                        ],
                      ),
                    ),
                  ),
                  Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Container(
                        height: 200,
                        width: 150,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(8)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset("assets/image/t-shart_2-removebg-preview.png"),
                            Text("T-Shart polo"),
                            Text("450",style: TextStyle(color: Colors.red),),
                            Container(
                              height: 25,
                              width: 70,
                              child: Center(child: Text("Buy Now",style: TextStyle(color: Colors.white),)),
                              decoration: BoxDecoration(
                                  color: Colors.red,
                                  borderRadius: BorderRadius.circular(8)),
                            )
                          ],
                        ),
                      )),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
