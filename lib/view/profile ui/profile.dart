import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: Icon(
          Icons.arrow_back_ios_new_outlined,
          size: 25,
        ),
        title: Text(
          "Md Rifat Alam",
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              clipBehavior: Clip.none,
              children: [
                Container(
                  height: 200,
                  decoration: BoxDecoration(
                      color: Colors.transparent,
                      image: DecorationImage(
                          image: AssetImage("assets/image/FB_IMG_cover.jpg"),
                          fit: BoxFit.fill)),
                ),
                Positioned(
                  bottom: -35,
                  child: CircleAvatar(
                    radius: 80,
                    //  child: Image.asset(""),
                    backgroundImage: AssetImage("assets/image/FB_IMG.jpg"),
                    //  backgroundColor: Colors.purple,
                  ),
                ),
                Positioned(
                  bottom: 13,
                  right: 20,
                  child: CircleAvatar(
                    radius: 20,
                    backgroundColor: Colors.white,
                    child: Icon(
                      Icons.camera_enhance,
                      size: 20,
                    ),
                  ),
                ),
                const Positioned(
                  left: 110,
                  bottom: -36,
                  child: CircleAvatar(
                    radius: 20,
                    backgroundColor: Colors.white,
                    child: Icon(
                      Icons.camera_enhance,
                      size: 20,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 50,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "Md Rifat AlaM",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Text(
                    "39",
                    style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17),
                  ),
                  SizedBox(width: 3,),
                  Text(
                    "friends",
                    style: TextStyle(
                      fontSize: 15,
                    ),
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Container(
                        height: 40,
                        width: 120,
                        decoration: BoxDecoration(color: Colors.blue,
                          borderRadius: BorderRadius.circular(15)
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Row(
                            children: [
                              Icon(Icons.add,size: 25,),
                              Text("Add to story",
                                style: TextStyle(fontWeight: FontWeight.bold),),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Container(
                        height: 40,
                        width: 120,
                        decoration: BoxDecoration(color: Colors.grey.shade400,
                            borderRadius: BorderRadius.circular(15)
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Row(
                            children: [
                              Icon(Icons.edit,size: 25,),
                              Text("Edit profile",
                                style: TextStyle(fontWeight: FontWeight.bold),),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Container(
                        height: 40,
                        width: 65,
                        decoration: BoxDecoration(color: Colors.grey.shade400,
                            borderRadius: BorderRadius.circular(15)
                        ),
                        child: Center(child: Icon(Icons.more_horiz,size: 28,)),
                      )
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 10,),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CircleAvatar(
                      radius: 20,
                      backgroundColor: Colors.blue,
                      child: Icon(Icons.security,size: 30,color: Colors.white,)),
                ),
                SizedBox(width: 5,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("You locked your profile",
                      style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                    Text("Learn more",
                      style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,
                      color: Colors.blue),)
                  ],
                ),
              ],
            ),
            Divider(
              thickness: 10,
              color: Colors.black,
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Card(
                    color: Colors.blue.shade500,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("Posts",
                        style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
                    ),
                  ),
                ),
                SizedBox(width: 20,),
                Text("Photos",
                    style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold)
                ),
                SizedBox(width: 20,),
                Text("Video",
                    style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold))
              ],
            ),
            Divider(
              thickness: 2,
              color: Colors.grey,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("Details",
                style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Icon(Icons.more_horiz,size: 28,),
                ),
                SizedBox(width: 8,),
                Text("See your About info",
                  style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),)
              ],
            ),
            Center(
              child: Container(
                height: 40,
                width: 330,
                decoration: BoxDecoration(
                    color: Colors.blue.shade200,
                  borderRadius: BorderRadius.circular(10)
                ),
                child: Center(
                  child: Text("Edit piblic details"
                    ,style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
