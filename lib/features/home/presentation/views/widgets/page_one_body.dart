import 'package:flutter/material.dart';
import 'package:task_ui/features/home/presentation/views/widgets/first_container.dart';
import 'package:task_ui/features/home/presentation/views/widgets/second_container.dart';

class PageOneBody extends StatelessWidget {
  const PageOneBody({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Stack(
      children: [
        Positioned(
          top: 0,
          child: FirstContainer(height: height*.3, width: width)),
        Positioned(
          bottom: 0,
          child: SecondContainer(height: height*.82, width: width)),
        
        ],
    );
  }
}
