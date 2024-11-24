import 'package:flutter/material.dart';
import 'package:task_ui/core/utils/app_colors.dart';
import 'package:task_ui/features/home/presentation/views/page_one.dart';
import 'package:task_ui/features/home/presentation/views/widgets/custom_second_button.dart';
import 'package:task_ui/features/home/presentation/views/widgets/custom_text_field_info.dart';

class FourthContainer extends StatelessWidget {
  final double height;
  final double width;
  const FourthContainer({super.key, required this.height, required this.width});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(color: AppColors.primaryColor.withOpacity(.95)),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                height: 140,
              ),
              const Text(
                "Your Visitor QR Code",
                style: TextStyle(
                    color: Color(0xff3697a7),
                    fontSize: 18,
                    fontWeight: FontWeight.w500),
              ),
              const Text(
                "was generated successfully!",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.w500),
              ),
              const SizedBox(
                height: 20,
              ),
              const CustomTextFieldInfo(),
              const SizedBox(
                height: 20,
              ),
              const Text(
                "Share this screen with your visitor so they can access it",
                style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    color: Colors.white),
              ),
              const SizedBox(
                height: 20,
              ),
              const CustomSecondButton(),
              const SizedBox(
                height: 22,
              ),
              GestureDetector(
                  onTap: () {
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const PageOne(),
                        ));
                  },
                  child: const Text(
                    "Back To Home",
                    style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: AppColors.whiteColor),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
