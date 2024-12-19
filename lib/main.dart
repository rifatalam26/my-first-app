import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

main() {
  runApp(myApp());
}

class myApp extends StatelessWidget {
  // const myApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(primarySwatch: Colors.green),
        darkTheme: ThemeData(primarySwatch: Colors.blueGrey),
        debugShowCheckedModeBanner: false,
        home: const HomeActivity());
  }
}

class HomeActivity extends StatefulWidget {
  const HomeActivity({super.key});

  @override
  State<HomeActivity> createState() => _HomeActivityState();
}

class _HomeActivityState extends State<HomeActivity> {
  int selectedIndex = 0;

  MySnackBar(massage, context) {
    ScaffoldMessenger.of(context)
        .showSnackBar(SnackBar(content: Text(massage)));
  }

  @override
  Widget build(BuildContext context) {
    ButtonStyle buttonStyle=ElevatedButton.styleFrom(
      padding: EdgeInsets.all(25),
          backgroundColor: Colors.green,
      foregroundColor: Colors.red,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(20))
        )
    );
    return Scaffold(
        appBar: AppBar(
          title: Text("My App"),
          titleSpacing: 10,
          //centerTitle: true,
          toolbarHeight: 60,
          toolbarOpacity: 1,
          backgroundColor: Colors.amber,
          actions: [
            IconButton(
                onPressed: () {
                  MySnackBar("no coment", context);
                },
                icon: Icon(
                  Icons.comment,
                  color: Colors.white,
                )),
            IconButton(
                onPressed: () {
                  MySnackBar("no vide call", context);
                },
                icon: Icon(
                  Icons.video_call,
                  color: Colors.deepOrange,
                )),
            IconButton(
                onPressed: () {
                  MySnackBar("no audio", context);
                },
                icon: Icon(Icons.audio_file, color: Colors.blue)),
            IconButton(
                onPressed: () {
                  MySnackBar("no setings", context);
                },
                icon: Icon(
                  Icons.settings,
                  color: Colors.green,
                )),
          ],
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
        floatingActionButton: FloatingActionButton(
            shape: CircleBorder(),
            elevation: 10,
            child: Icon(
              Icons.add,
              color: Colors.blue,
            ),
            backgroundColor: Colors.green,
            // foregroundColor: Colors.black,
            onPressed: () {
              MySnackBar("I am floatingAction button", context);
            }),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: selectedIndex, // Active tab index
          selectedItemColor: Colors.blue, // Active item color
          // unselectedItemColor: Colors.grey, // Inactive item color
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: 'Search',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Profile',
            ),
          ],
          onTap: (index) {
            if (index == 0) {
              MySnackBar("I am Home menu", context);
            }
            if (index == 1) {
              MySnackBar("I am contact menu", context);
            }
            if (index == 2) {
              MySnackBar("I am profile menu", context);
            }
            setState(() {
              selectedIndex = index; // Update the selected tab index
            });
          },
        ),
        drawer: Drawer(
            child: ListView(
          children: [
            DrawerHeader(
                padding: EdgeInsets.all(0),
                child: UserAccountsDrawerHeader(
                  accountName: Text("Md Rifat Alam"),
                  accountEmail: Text("mdrftlm@gmail.com"),
                  currentAccountPicture: Image.network(
                      "https://img-cdn.pixlr.com/image-generator/history/65bb506dcb310754719cf81f/ede935de-1138-4f66-8ed7-44bd16efc709/medium.webp"),
                )),
            ListTile(
              leading: Icon(Icons.home),
              title: Text("Home"),
              onTap: () {
                MySnackBar("This is Home", context);
              },
            ),
            ListTile(
                leading: Icon(Icons.person),
                title: Text("Profile"),
                onTap: () {
                  MySnackBar("This is Profile", context);
                }),
            ListTile(
                leading: Icon(Icons.email),
                title: Text("Email"),
                onTap: () {
                  MySnackBar("This is Email", context);
                })
          ],
        )),
        endDrawer: Drawer(
            child: ListView(
          children: [
            DrawerHeader(
                padding: EdgeInsets.all(0),
                child: UserAccountsDrawerHeader(
                  accountName: Text("Md Rifat Alam"),
                  accountEmail: Text("mdrftlm@gmail.com"),
                  currentAccountPicture: Image.network(
                      "https://img-cdn.pixlr.com/image-generator/history/65bb506dcb310754719cf81f/ede935de-1138-4f66-8ed7-44bd16efc709/medium.webp"),
                )),
            ListTile(
              leading: Icon(Icons.home),
              title: Text("Home"),
              onTap: () {
                MySnackBar("This is Home", context);
              },
            ),
            ListTile(
                leading: Icon(Icons.person),
                title: Text("Profile"),
                onTap: () {
                  MySnackBar("This is Profile", context);
                }),
            ListTile(
                leading: Icon(Icons.email),
                title: Text("Email"),
                onTap: () {
                  MySnackBar("This is Email", context);
                })
          ],
        )),
        // body: Center(
        //   child: Text("Hello \n This is my App" ""),
        // )

        // body: Container(
        //   height: 250,
        //   width: 250,
        //   alignment: Alignment.topCenter,
        //   margin: EdgeInsets.fromLTRB(30, 60, 50, 10),
        //   padding: EdgeInsets.all(60),
        //   decoration: BoxDecoration(
        //       color: Colors.blue,
        //       border: Border.all(color: Colors.black, width: 10)),
        //   child: Text("ALAM"),
        // ),
        // body: Row(
        //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        //   children: [
        //     Container(height: 100,width: 100,child:Image.asset("assets\my picture.jpg")),
        //     Container(height: 100,width: 100,child:Image.network("https://www.google.com/url?sa=i&url=https%3A%2F%2Fpixlr.com%2Fimage-generator%2F&psig=AOvVaw0b2iyc_3bSMlYYVmCvT22U&ust=1734629460943000&source=images&cd=vfe&opi=89978449&ved="),),
        //     Container(height: 100,width: 100,child:Image.network("https://www.google.com/url?sa=i&url=https%3A%2F%2Fpixlr.com%2Fimage-generator%2F&psig=AOvVaw0b2iyc_3bSMlYYVmCvT22U&ust=1734629460943000&source=images&cd=vfe&opi=89978449&ved="),)
        //   ],
        // ),
        body: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            TextButton(
                onPressed: () {
                  MySnackBar("This is Text Button", context);
                },
                child: Text("Text Button")),
            ElevatedButton(
                onPressed: () {
                  MySnackBar("This is Elevated Button", context);
                  MySnackBar("This is Elevated Button", context);
                },
                child: Text("Elevated Button"),style: buttonStyle,),
            OutlinedButton(
                onPressed: () {
                  MySnackBar("This is Outlined Button", context);
                },
                child: Text("Outlined Button"))
          ],
        ));
  }
}
