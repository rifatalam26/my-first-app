import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

main(){
  runApp( myApp());
}
class myApp extends StatelessWidget{
 // const myApp({super.key});

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
        theme: ThemeData(primarySwatch: Colors.green),
        darkTheme: ThemeData(primarySwatch: Colors.blueGrey),
        debugShowCheckedModeBanner: false,

        home:const HomeActivity());
  }

}

class HomeActivity extends StatelessWidget{
  const HomeActivity({super.key});
  MySnackBar(massage,context){
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content:Text(massage))
    );
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(

    appBar: AppBar(
      title: Text("My App"),
      titleSpacing: 10,
      //centerTitle: true,
      toolbarHeight: 60,
      toolbarOpacity: 1,
      backgroundColor: Colors.amber,
      actions: [
        IconButton(onPressed: (){MySnackBar("no coment", context);}, icon: Icon(Icons.comment,color: Colors.white,)),
        IconButton(onPressed: (){MySnackBar("no vide call", context);}, icon: Icon(Icons.video_call,color: Colors.deepOrange,)),
        IconButton(onPressed: (){MySnackBar("no audio", context);}, icon: Icon(Icons.audio_file,color:Colors.blue)),
        IconButton(onPressed: (){MySnackBar("no setings", context);}, icon: Icon(Icons.settings,color: Colors.green,)),
      ],
    ),
    floatingActionButton: FloatingActionButton(
      elevation: 10,
    child: Icon(Icons.add),
    backgroundColor: Colors.green,
    onPressed: (){
      MySnackBar("I am floatingAction button",context);
    }


    ),





    body: Text("Hello \n This is my App"""),


    );
  }

}


