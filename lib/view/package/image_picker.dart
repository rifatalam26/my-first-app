import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class ImagePic extends StatefulWidget {
  const ImagePic({super.key});

  @override
  State<ImagePic> createState() => _ImagePicState();
}

class _ImagePicState extends State<ImagePic> {
  XFile? image;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        centerTitle: true,
        title: Text(
          "Md Rifat Alam",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
           // Image(height: 200, width: 200, image: FileImage(File(image!.path))),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
                onPressed: () async {
                  ImagePicker p = ImagePicker();
                  p.pickImage(source: ImageSource.camera);
                },
                child: Text(
                  "Camera",
                  style: TextStyle(fontWeight: FontWeight.bold),
                )),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
                onPressed: () async {
                  ImagePicker p = ImagePicker();
                  p.pickImage(source: ImageSource.gallery);
                  setState(() {

                  });
                },
                child: Text(
                  "Gallery",
                  style: TextStyle(fontWeight: FontWeight.bold),
                )),
          ],
        ),
      ),
    );
  }
}
