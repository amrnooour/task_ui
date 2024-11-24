import 'package:flutter/material.dart';

class CustomRowTitle extends StatelessWidget {
  const CustomRowTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text("Visitor Info",style: TextStyle(fontSize: 18),),
        Row(children: [
          Text("*",style: TextStyle(color: Colors.green,fontSize: 12),),
          Text("Required field",style: TextStyle(fontSize: 12),),
        ],)   
         ],
    );
  }
}