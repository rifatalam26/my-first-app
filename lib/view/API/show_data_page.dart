import 'package:flutter/material.dart';
import 'package:my_app/view/API/api_call.dart';
import 'package:my_app/view/API/joksmodel.dart';

class ShowDataPage extends StatefulWidget {
  const ShowDataPage({super.key});

  @override
  State<ShowDataPage> createState() => _ShowDataPageState();
}

class _ShowDataPageState extends State<ShowDataPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text(
          "Show Data Page",
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
        ),
      ),
      body: Center(
          child: FutureBuilder(
        future: ApiCall().joksData(),
        builder: (context, snapshots) {
          List<JoksModel>? l = snapshots.data?.toList();
          if (snapshots.hasData) {
            return ListView.builder(
                itemCount: l?.length,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      Card(
                        elevation: 15,
                        shadowColor: Colors.black,
                        child: Container(
                            height: 50,
                            width: 350,
                            decoration: BoxDecoration(
                                color: Colors.blueGrey,
                                borderRadius: BorderRadius.circular(12)),
                            child:
                                Center(child: Text(l![index].type.toString()))),
                      ),
                      Card(
                        elevation: 15,
                        shadowColor: Colors.black,
                        child: Container(
                            height: 50,
                            width: 350,
                            decoration: BoxDecoration(
                                color: Colors.blueGrey,
                                borderRadius: BorderRadius.circular(12)),
                            child:
                                Center(child: Text(l[index].setup.toString()))),
                      ),
                      Card(
                        elevation: 15,
                        shadowColor: Colors.black,
                        child: Container(
                            height: 50,
                            width: 350,
                            decoration: BoxDecoration(
                                color: Colors.blueGrey,
                                borderRadius: BorderRadius.circular(12)),
                            child:
                            Center(child: Text(l[index].punchline.toString()))),
                      ),
                      Card(
                        elevation: 15,
                        shadowColor: Colors.black,
                        child: Container(
                            height: 50,
                            width: 350,
                            decoration: BoxDecoration(
                                color: Colors.blueGrey,
                                borderRadius: BorderRadius.circular(12)),
                            child:
                            Center(child: Text(l[index].id.toString()))),
                      ),
                    ],
                  );
                });
          } else if (snapshots.hasError) {
            return const Text("Has Error");
          } else {
            return const CircularProgressIndicator();
          }
        },
      )),
    );
  }
}
