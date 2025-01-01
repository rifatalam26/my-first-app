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
      appBar: AppBar(
        leading: IconButton(onPressed: () {}, icon: Icon(Icons.menu)),
        title: Text("Card Design"),
        actions: [
        //  IconButton(onPressed: () {}, icon: Icon(Icons.shopping_cart)),
          IconButton(onPressed: () {}, icon: Icon(Icons.search)),
        ],
        backgroundColor: Colors.purple,
        centerTitle: true,

        foregroundColor: Colors.white,

        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(bottom: Radius.circular(40)),
        ),
      ),
      body:Column(
        children: [
          Card(elevation: 20.0,
            //color: Colors.orangeAccent,
            // shape:OutlineInputBorder(
            //   borderRadius: BorderRadius.all(Radius.circular(30)),
            //  // borderSide: BorderSide(color: Colors.black,width: 3),
            // ) ,
          margin: EdgeInsets.only(top: 10,left: 10,right: 10),
           child: Column(
             children: [
               Row(mainAxisAlignment: MainAxisAlignment.start,
                 crossAxisAlignment: CrossAxisAlignment.start,
                 children: [IconButton(onPressed: (){}, icon: Icon(Icons.call)),
                 SizedBox(width: 20,),
                   Column(
                     children: [
                       Text("1257937300",style: TextStyle(color: Colors.green,fontSize: 15.0),),
                       Text("Incoming",style: TextStyle(color: Colors.orange),),
                     ],

                   )
                 ],
               ),
               SizedBox(height: 2,),
               Row(mainAxisAlignment: MainAxisAlignment.end,
                 crossAxisAlignment: CrossAxisAlignment.end,
                 children: [
                   TextButton(onPressed: (){}, child: Text("Dail",style: TextStyle(color: Colors.blue),)),
                   TextButton(onPressed: (){}, child: Text("Call History",style: TextStyle(color: Colors.blue))),
                 ],
               )
             ],
           ),
          ),
          Card(elevation: 20.0,
            //color: Colors.orangeAccent,
            // shape:OutlineInputBorder(
            //   borderRadius: BorderRadius.all(Radius.circular(30)),
            //  // borderSide: BorderSide(color: Colors.black,width: 3),
            // ) ,
            margin: EdgeInsets.only(top: 10,left: 10,right: 10),
            child: Column(
              children: [
                Row(mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [IconButton(onPressed: (){}, icon: Icon(Icons.call)),
                    SizedBox(width: 20,),
                    Column(
                      children: [
                        Text("01355737300",style: TextStyle(color: Colors.green,fontSize: 15.0),),
                        Text("Outgoing",style: TextStyle(color: Colors.orange),),
                      ],

                    )
                  ],
                ),
                SizedBox(height: 2,),
                Row(mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    TextButton(onPressed: (){}, child: Text("Dail",style: TextStyle(color: Colors.blue))),
                    TextButton(onPressed: (){}, child: Text("Call History",style: TextStyle(color: Colors.blue))),
                  ],
                )
              ],
            ),
          ),
          Card(elevation: 20.0,
            //color: Colors.orangeAccent,
            // shape:OutlineInputBorder(
            //   borderRadius: BorderRadius.all(Radius.circular(30)),
            //  // borderSide: BorderSide(color: Colors.black,width: 3),
            // ) ,
            margin: EdgeInsets.only(top: 10,left: 10,right: 10),
            child: Column(
              children: [
                Row(mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [IconButton(onPressed: (){}, icon: Icon(Icons.call)),
                    SizedBox(width: 20,),
                    Column(
                      children: [
                        Text("33333333333",style: TextStyle(color: Colors.green,fontSize: 15.0)),
                        Text("Missed",style: TextStyle(color: Colors.orange)),
                      ],

                    )
                  ],
                ),
                SizedBox(height: 2,),
                Row(mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    TextButton(onPressed: (){}, child: Text("Dail",style: TextStyle(color: Colors.blue))),
                    TextButton(onPressed: (){}, child: Text("Call History",style: TextStyle(color: Colors.blue))),
                  ],
                )
              ],
            ),
          ),
          Card(elevation: 20.0,
            //color: Colors.orangeAccent,
            // shape:OutlineInputBorder(
            //   borderRadius: BorderRadius.all(Radius.circular(30)),
            //  // borderSide: BorderSide(color: Colors.black,width: 3),
            // ) ,
            margin: EdgeInsets.only(top: 10,left: 10,right: 10),
            child: Column(
              children: [
                Row(mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [IconButton(onPressed: (){}, icon: Icon(Icons.call)),
                    SizedBox(width: 20,),
                    Column(
                      children: [
                        Text("66666666666",style: TextStyle(color: Colors.green,fontSize: 15.0)),
                        Text("Incoming",style: TextStyle(color: Colors.orange)),
                      ],

                    )
                  ],
                ),
                SizedBox(height: 2,),
                Row(mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    TextButton(onPressed: (){}, child: Text("Dail",style: TextStyle(color: Colors.blue))),
                    TextButton(onPressed: (){}, child: Text("Call History",style: TextStyle(color: Colors.blue))),
                  ],
                )
              ],
            ),
          ),
          Card(elevation: 20.0,
            //color: Colors.orangeAccent,
            // shape:OutlineInputBorder(
            //   borderRadius: BorderRadius.all(Radius.circular(30)),
            //  // borderSide: BorderSide(color: Colors.black,width: 3),
            // ) ,
            margin: EdgeInsets.only(top: 10,left: 10,right: 10),
            child: Column(
              children: [
                Row(mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [IconButton(onPressed: (){}, icon: Icon(Icons.call)),
                    SizedBox(width: 20,),
                    Column(
                      children: [
                        Text("10101010101",style: TextStyle(color: Colors.green,fontSize: 15.0)),
                        Text("Outgoing",style: TextStyle(color: Colors.orange)),
                      ],

                    )
                  ],
                ),
                SizedBox(height: 2,),
                Row(mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    TextButton(onPressed: (){}, child: Text("Dail",style: TextStyle(color: Colors.blue))),
                    TextButton(onPressed: (){}, child: Text("Call History",style: TextStyle(color: Colors.blue))),
                  ],
                )
              ],
            ),
          ),
        ],
      )
    );
  }
}
