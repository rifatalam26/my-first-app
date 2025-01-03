import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
          leading: IconButton(onPressed: () {}, icon: Icon(Icons.menu)),
          title: Text("Home Page"),
          actions: [
            //  IconButton(onPressed: () {}, icon: Icon(Icons.shopping_cart)),
            IconButton(onPressed: () {}, icon: Icon(Icons.settings)),
          ],
          backgroundColor: Colors.blueAccent,
          centerTitle: true,
          foregroundColor: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(30)),
          ),
        ),

      body: Center(
        child: ListView(
          children: [
            Card(
              color: Colors.blue,
              shape: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(30)),
                borderSide: BorderSide(color: Colors.transparent),
              ),
              child: SizedBox(
                height: 200,
                width: 170,
                child: Column(
                  children: [
                  SizedBox(height: 130,
                   child: Card(

                     elevation: 0,
                     shape: OutlineInputBorder(
                       borderRadius: BorderRadius.only(topLeft: Radius.circular(30),topRight: Radius.circular(30)),
                       borderSide: BorderSide(color: Colors.transparent)
                     ),
                     margin: EdgeInsets.zero,
                     child: Row(mainAxisAlignment: MainAxisAlignment.center,
                       children: [
                         Icon(Icons.person_outline,size: 70,color: Colors.blueAccent,),
                         Text("2025",style: TextStyle(color: Colors.blueAccent,fontSize: 25.0,fontWeight: FontWeight.bold),)
                       ],
                     ),
                   ),
                   ),
                    SizedBox(height: 15,),
                    Text("Student",style: TextStyle(color: Colors.white,fontSize: 25,fontWeight:FontWeight.bold ),)
                  ],
                ),
              ),
            ),
            Card(
              color: Colors.blue,
              shape: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(30)),
                borderSide: BorderSide(color: Colors.transparent),
              ),
              child: SizedBox(
                height: 200,
                width: 170,
                child: Column(
                  children: [
                    SizedBox(height: 130,
                      child: Card(
                        elevation: 0,
                        shape: OutlineInputBorder(
                          borderRadius: BorderRadius.only(topLeft: Radius.circular(30),topRight: Radius.circular(30)),
                            borderSide: BorderSide(color: Colors.transparent)
                        ),
                        margin: EdgeInsets.zero,
                        child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Icon(Icons.newspaper,size: 70,color: Colors.blueAccent,),
                            Text("10",style: TextStyle(color: Colors.blueAccent,fontSize: 25.0,fontWeight: FontWeight.bold),)
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 15,),
                    Text("News",style: TextStyle(color: Colors.white,fontSize: 25,fontWeight:FontWeight.bold ),)
                  ],
                ),
              ),
            ),
            Card(
              color: Colors.blue,
              shape: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(30)),
                borderSide: BorderSide(color: Colors.transparent),
              ),
              child: SizedBox(
                height: 200,
                width: 170,
                child: Column(
                  children: [
                    SizedBox(height: 130,
                      child: Card(

                        elevation: 0,
                        shape: OutlineInputBorder(
                            borderRadius: BorderRadius.only(topLeft: Radius.circular(30),topRight: Radius.circular(30)),
                            borderSide: BorderSide(color: Colors.transparent)
                        ),
                        margin: EdgeInsets.zero,
                        child: Row(mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.person_outline,size: 70,color: Colors.blueAccent,),
                            Text("2025",style: TextStyle(color: Colors.blueAccent,fontSize: 25.0,fontWeight: FontWeight.bold),)
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 15,),
                    Text("Student",style: TextStyle(color: Colors.white,fontSize: 25,fontWeight:FontWeight.bold ),)
                  ],
                ),
              ),
            ),
            Card(
              color: Colors.blue,
              shape: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(30)),
                borderSide: BorderSide(color: Colors.transparent),
              ),
              child: SizedBox(
                height: 200,
                width: 170,
                child: Column(
                  children: [
                    SizedBox(height: 130,
                      child: Card(

                        elevation: 0,
                        shape: OutlineInputBorder(
                            borderRadius: BorderRadius.only(topLeft: Radius.circular(30),topRight: Radius.circular(30)),
                            borderSide: BorderSide(color: Colors.transparent)
                        ),
                        margin: EdgeInsets.zero,
                        child: Row(mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.person_outline,size: 70,color: Colors.blueAccent,),
                            Text("2025",style: TextStyle(color: Colors.blueAccent,fontSize: 25.0,fontWeight: FontWeight.bold),)
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 15,),
                    Text("Student",style: TextStyle(color: Colors.white,fontSize: 25,fontWeight:FontWeight.bold ),)
                  ],
                ),
              ),
            ),
            Card(
              color: Colors.blue,
              shape: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(30)),
                borderSide: BorderSide(color: Colors.transparent),
              ),
              child: SizedBox(
                height: 200,
                width: 170,
                child: Column(
                  children: [
                    SizedBox(height: 130,
                      child: Card(

                        elevation: 0,
                        shape: OutlineInputBorder(
                            borderRadius: BorderRadius.only(topLeft: Radius.circular(30),topRight: Radius.circular(30)),
                            borderSide: BorderSide(color: Colors.transparent)
                        ),
                        margin: EdgeInsets.zero,
                        child: Row(mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.person_outline,size: 70,color: Colors.blueAccent,),
                            Text("2025",style: TextStyle(color: Colors.blueAccent,fontSize: 25.0,fontWeight: FontWeight.bold),)
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 15,),
                    Text("Student",style: TextStyle(color: Colors.white,fontSize: 25,fontWeight:FontWeight.bold ),)
                  ],
                ),
              ),
            ),
            Card(
              color: Colors.blue,
              shape: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(30)),
                borderSide: BorderSide(color: Colors.transparent),
              ),
              child: SizedBox(
                height: 200,
                width: 170,
                child: Column(
                  children: [
                    SizedBox(height: 130,
                      child: Card(

                        elevation: 0,
                        shape: OutlineInputBorder(
                            borderRadius: BorderRadius.only(topLeft: Radius.circular(30),topRight: Radius.circular(30)),
                            borderSide: BorderSide(color: Colors.transparent)
                        ),
                        margin: EdgeInsets.zero,
                        child: Row(mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.person_outline,size: 70,color: Colors.blueAccent,),
                            Text("2025",style: TextStyle(color: Colors.blueAccent,fontSize: 25.0,fontWeight: FontWeight.bold),)
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 15,),
                    Text("Student",style: TextStyle(color: Colors.white,fontSize: 25,fontWeight:FontWeight.bold ),)
                  ],
                ),
              ),
            ),
            Card(
              color: Colors.blue,
              shape: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(30)),
                borderSide: BorderSide(color: Colors.transparent),
              ),
              child: SizedBox(
                height: 200,
                width: 170,
                child: Column(
                  children: [
                    SizedBox(height: 130,
                      child: Card(

                        elevation: 0,
                        shape: OutlineInputBorder(
                            borderRadius: BorderRadius.only(topLeft: Radius.circular(30),topRight: Radius.circular(30)),
                            borderSide: BorderSide(color: Colors.transparent)
                        ),
                        margin: EdgeInsets.zero,
                        child: Row(mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.person_outline,size: 70,color: Colors.blueAccent,),
                            Text("2025",style: TextStyle(color: Colors.blueAccent,fontSize: 25.0,fontWeight: FontWeight.bold),)
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 15,),
                    Text("Student",style: TextStyle(color: Colors.white,fontSize: 25,fontWeight:FontWeight.bold ),)
                  ],
                ),
              ),
            ),
            Card(
              color: Colors.blue,
              shape: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(30)),
                borderSide: BorderSide(color: Colors.transparent),
              ),
              child: SizedBox(
                height: 200,
                width: 170,
                child: Column(
                  children: [
                    SizedBox(height: 130,
                      child: Card(

                        elevation: 0,
                        shape: OutlineInputBorder(
                            borderRadius: BorderRadius.only(topLeft: Radius.circular(30),topRight: Radius.circular(30)),
                            borderSide: BorderSide(color: Colors.transparent)
                        ),
                        margin: EdgeInsets.zero,
                        child: Row(mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.person_outline,size: 70,color: Colors.blueAccent,),
                            Text("2025",style: TextStyle(color: Colors.blueAccent,fontSize: 25.0,fontWeight: FontWeight.bold),)
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 15,),
                    Text("Student",style: TextStyle(color: Colors.white,fontSize: 25,fontWeight:FontWeight.bold ),)
                  ],
                ),
              ),
            ),
            Card(
              color: Colors.blue,
              shape: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(30)),
                borderSide: BorderSide(color: Colors.transparent),
              ),
              child: SizedBox(
                height: 200,
                width: 170,
                child: Column(
                  children: [
                    SizedBox(height: 130,
                      child: Card(

                        elevation: 0,
                        shape: OutlineInputBorder(
                            borderRadius: BorderRadius.only(topLeft: Radius.circular(30),topRight: Radius.circular(30)),
                            borderSide: BorderSide(color: Colors.transparent)
                        ),
                        margin: EdgeInsets.zero,
                        child: Row(mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.person_outline,size: 70,color: Colors.blueAccent,),
                            Text("2025",style: TextStyle(color: Colors.blueAccent,fontSize: 25.0,fontWeight: FontWeight.bold),)
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 15,),
                    Text("Student",style: TextStyle(color: Colors.white,fontSize: 25,fontWeight:FontWeight.bold ),)
                  ],
                ),
              ),
            ),
            Card(
              color: Colors.blue,
              shape: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(30)),
                borderSide: BorderSide(color: Colors.transparent),
              ),
              child: SizedBox(
                height: 200,
                width: 170,
                child: Column(
                  children: [
                    SizedBox(height: 130,
                      child: Card(

                        elevation: 0,
                        shape: OutlineInputBorder(
                            borderRadius: BorderRadius.only(topLeft: Radius.circular(30),topRight: Radius.circular(30)),
                            borderSide: BorderSide(color: Colors.transparent)
                        ),
                        margin: EdgeInsets.zero,
                        child: Row(mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.person_outline,size: 70,color: Colors.blueAccent,),
                            Text("2025",style: TextStyle(color: Colors.blueAccent,fontSize: 25.0,fontWeight: FontWeight.bold),)
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 15,),
                    Text("Student",style: TextStyle(color: Colors.white,fontSize: 25,fontWeight:FontWeight.bold ),)
                  ],
                ),
              ),
            ),
            Card(
              color: Colors.blue,
              shape: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(30)),
                borderSide: BorderSide(color: Colors.transparent),
              ),
              child: SizedBox(
                height: 200,
                width: 170,
                child: Column(
                  children: [
                    SizedBox(height: 130,
                      child: Card(

                        elevation: 0,
                        shape: OutlineInputBorder(
                            borderRadius: BorderRadius.only(topLeft: Radius.circular(30),topRight: Radius.circular(30)),
                            borderSide: BorderSide(color: Colors.transparent)
                        ),
                        margin: EdgeInsets.zero,
                        child: Row(mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.person_outline,size: 70,color: Colors.blueAccent,),
                            Text("2025",style: TextStyle(color: Colors.blueAccent,fontSize: 25.0,fontWeight: FontWeight.bold),)
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 15,),
                    Text("Student",style: TextStyle(color: Colors.white,fontSize: 25,fontWeight:FontWeight.bold ),)
                  ],
                ),
              ),
            ),
            Card(
              color: Colors.blue,
              shape: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(30)),
                borderSide: BorderSide(color: Colors.transparent),
              ),
              child: SizedBox(
                height: 200,
                width: 170,
                child: Column(
                  children: [
                    SizedBox(height: 130,
                      child: Card(

                        elevation: 0,
                        shape: OutlineInputBorder(
                            borderRadius: BorderRadius.only(topLeft: Radius.circular(30),topRight: Radius.circular(30)),
                            borderSide: BorderSide(color: Colors.transparent)
                        ),
                        margin: EdgeInsets.zero,
                        child: Row(mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.person_outline,size: 70,color: Colors.blueAccent,),
                            Text("2025",style: TextStyle(color: Colors.blueAccent,fontSize: 25.0,fontWeight: FontWeight.bold),)
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 15,),
                    Text("Student",style: TextStyle(color: Colors.white,fontSize: 25,fontWeight:FontWeight.bold ),)
                  ],
                ),
              ),
            ),
          ],
        ),
      )
   
        
      );
    
  }
}
