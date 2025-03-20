import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_app/view/Model/data_model.dart';

class ModelScreen2 extends StatefulWidget {
   ModelScreen2({super.key ,required this.list});
  List<DataModel> ? list;
  @override
  State<ModelScreen2> createState() => _ModelScreen2State();
}

class _ModelScreen2State extends State<ModelScreen2> {
  @override
  void initState() {
   print("list------------------: ${widget.list?.length}");
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.white,
        centerTitle: true,
        backgroundColor: Colors.blue,
        title: Text(
          "Model Screen 2",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: ListView.builder(
          itemCount: widget.list?.length,
          itemBuilder: (context,index){
        return ListTile(
          leading: Text("${widget.list?[index].name}"),
          title: Text("${widget.list?[index].dep}"),
          subtitle: Text("${widget.list?[index].roll}"),
        );
      }),
    );
  }
}
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
//
// import 'data_model.dart';
//
// class ModelScreen2 extends StatefulWidget {
//    ModelScreen2({super.key,required this.list});
//   List<DataModel> ? list;
//   @override
//   State<ModelScreen2> createState() => _ModelScreen2State();
// }
//
// class recuired {
// }
//
// class _ModelScreen2State extends State<ModelScreen2> {
//   @override
//   void initState() {
//     print("List_______: ${widget.list!.length ?? []}");
//     super.initState();
//   }
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         foregroundColor: Colors.white,
//         centerTitle: true,
//         backgroundColor: Colors.blue,
//         title: Text(
//           "Model Screen 2",
//           style: TextStyle(fontWeight: FontWeight.bold),
//         ),
//       ),
//       body: ListView.builder(
//         itemCount: widget.list!.length,
//           itemBuilder: (context,index){
//             return Padding(
//               padding: const EdgeInsets.all(8.0),
//               child: ListTile(
//                 tileColor: Colors.greenAccent,
//                 title: Text("${widget.list![index].name}"),
//                 subtitle: Text("${widget.list![index].dep}"),
//                 leading: Text("${widget.list![index].roll}"),
//               ),
//             );
//           }),
//     );
//   }
// }
