import 'package:flutter/material.dart';

class DetailScreen extends StatefulWidget {
  final String name;
  final String desc;
  final String hei;
  const DetailScreen({Key? key, required this.name, required this.desc, required this.hei}) : super(key: key);

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
        Column(
          mainAxisAlignment: MainAxisAlignment.center,

          children: [
            Text(widget.name,style: TextStyle(fontSize: 30),),
            Text(widget.desc,style: TextStyle(fontSize: 30),),
            Text(widget.hei,style: TextStyle(fontSize: 30),),
          ],
        ),

    );
  }
}
