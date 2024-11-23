import 'package:flutter/material.dart';
import 'package:task_ui/features/home/presentation/views/widgets/first_container.dart';

class PageOneBody extends StatelessWidget {
  const PageOneBody({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Column(
      children: [
        FirstContainer(height: height*.2, width: width)],
    );
  }
}
