import 'package:flutter/material.dart';



class Button extends StatefulWidget {
  String name;
  Button({super.key,required this.name});

  @override
  State<Button> createState() => _ButtonState();
}

class _ButtonState extends State<Button> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height:50,
      width: 300,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        color: Colors.orange
      ),
      child: Center(
          child: Text(
             widget.name ,
            style: TextStyle(
              fontSize: 20,
              color: Colors.white,
              fontWeight: FontWeight.bold
            ),
          )
      ),
    );
  }
}
