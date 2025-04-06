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

          if (snapshots.hasData) {
            List<JoksModel>? l=snapshots.data?.toList();
            return ListView.builder(
                itemCount: l?.length,
                itemBuilder: (context,index){
              return Card(
                color: Colors.blueGrey,
                child: Column(
                  children: [
                    Text(l![index].type.toString()),
                    Text(l[index].setup.toString()),
                    Text(l[index].punchline.toString()),
                    Text(l[index].id.toString()),
                  ],
                ),
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
