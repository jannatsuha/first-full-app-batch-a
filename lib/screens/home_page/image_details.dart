import 'package:first_app/helper/custom_appbar.dart';
import 'package:flutter/material.dart';

class ImageDetails extends StatefulWidget {
  String detailText;
   ImageDetails({Key? key,
  required this.detailText}) : super(key: key);

  @override
  _ImageDetailsState createState() => _ImageDetailsState();
}

class _ImageDetailsState extends State<ImageDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(50),
        child: CustomAppBar(
            title: "Image Details"),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(widget.detailText,
            textAlign: TextAlign.justify,
            style: TextStyle(
              fontSize: 25,
              color: Colors.black,
              fontWeight: FontWeight.bold
            ),),
          ),
        ],
      ),
    );
  }
}
