import 'package:first_app/screens/home_page/my_home_page.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatefulWidget {
  String title;
   CustomAppBar({Key? key,required this.title}) : super(key: key);

  @override
  _CustomAppBarState createState() => _CustomAppBarState();
}

class _CustomAppBarState extends State<CustomAppBar> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.teal,
      centerTitle: true,
      title: Text(widget.title,style:
      TextStyle(
        fontStyle: FontStyle.italic
      ),),
    );
  }
}
