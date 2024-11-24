import 'package:flutter/material.dart';
import 'package:task_ui/core/utils/app_colors.dart';
import 'package:task_ui/features/home/presentation/views/page_two.dart';

class CustomNextButton extends StatelessWidget {
  const CustomNextButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(30)),
        gradient: LinearGradient(
          begin: Alignment.centerLeft, // Start of the gradient
          end: Alignment.centerRight, // End of the gradient
          colors: [
            Color(0xFF157C8C), // #157C8C
            Color(0xFF2CBBD2), // #2CBBD2
          ],
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 32, right: 12),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              "Next Step",
              style: TextStyle(color: AppColors.whiteColor),
            ),
            Container(
              height: 36,
              width: 36,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30), color: Colors.black),
              child: Center(
                child: GestureDetector(
                    onTap: () {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const PageTwo(),
                          ));
                    },
                    child: const Icon(
                      Icons.arrow_forward_ios_rounded,
                      color: Colors.white,
                      size: 18,
                    )),
              ),
            )
          ],
        ),
      ),
    );
  }
}
