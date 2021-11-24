import 'package:first_app/helper/custom_appbar.dart';
import 'package:first_app/screens/full_image_show.dart';
import 'package:flutter/material.dart';

List<String> imageList=[
  "assets/image/ict1.jpg",
  "assets/image/ict2.jpg",
  "assets/image/ict3.jpg",
  "assets/image/ict4.jpg",
  "assets/image/ict5.jpg",
  "assets/image/ict6.jpg",
  "assets/image/ict7.jpg",
  "assets/image/ict8.jpg",
  "assets/image/ict1.jpg",
  "assets/image/ict2.jpg",
  "assets/image/ict3.jpg",
  "assets/image/ict4.jpg",
  "assets/image/ict5.jpg",
  "assets/image/ict6.jpg",
  "assets/image/ict7.jpg",
  "assets/image/ict8.jpg"
];
class PhotoGallery extends StatefulWidget {
  const PhotoGallery({Key? key}) : super(key: key);

  @override
  _PhotoGalleryState createState() => _PhotoGalleryState();
}

class _PhotoGalleryState extends State<PhotoGallery> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:
      PreferredSize(
        preferredSize: Size.fromHeight(50),
          child: CustomAppBar(
              title: "Photo Gallery")),
      body: Container(
        child:
        GridView.count(
            crossAxisCount: 3,
          children: imageList.map((item) {
            return Padding(
              padding: const EdgeInsets.all(4.0),
              child: InkWell(
                onTap: (){
                  Navigator.push(context,
                  MaterialPageRoute(builder:
                  (context)=>FullImageShow(
                      image: item)));
                },
                child: Container(
                  height: 90,
                    width: 100,
                    child: Image.asset(item,fit: BoxFit.cover,),
                ),
              ),
            );
          }).toList(),

        ),
      ),
    );
  }
}
