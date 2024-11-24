import 'package:flutter/material.dart';
import 'package:task_ui/core/utils/app_assets.dart';
import 'package:task_ui/features/home/presentation/views/widgets/fourth_container.dart';
import 'package:task_ui/features/home/presentation/views/widgets/third_container.dart';

class PageTwoBody extends StatelessWidget {
  const PageTwoBody({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Stack(
      children: [
        Positioned(
          top: 0,
          child: ThirdContainer(height: height * .47, width: width)),
          Positioned(
          bottom: 0,
          child: FourthContainer(height: height * .53, width: width)),
        Align(
          alignment: Alignment.center,
          child: Image.asset(height: 200, width: 200, AppAssets.parcode),
        ),
        
      ],
    );
  }
}
