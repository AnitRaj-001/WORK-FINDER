import 'package:flutter/material.dart';
import 'package:work_finder/constant/colors/custom_colors.dart';

class WorkTypeCard extends StatelessWidget {
  final String imagePath;
  final String text;

  const WorkTypeCard({
    super.key,
    required this.imagePath,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        // Circle background
        Container(
          height: 80,
          width: 80,
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            color: CustomColors.primaryColor,
          ),
        ),
        // Positioned elements
        Positioned(
          bottom: 0,
          child: Container(
            height: 40,
            width: 80,
            decoration: BoxDecoration(
              color: Colors.black12.withOpacity(0.7),
              borderRadius: const BorderRadius.vertical(
                bottom: Radius.circular(60),
              ),
            ),
          ),
        ),
        // Image at the center top
        Positioned(
          top: 10,
          child: Image.asset(
            imagePath,
            height: 40,
            width: 40,
            color: CustomColors.dark,
          ),
        ),
        // Text below the image
        Positioned(
          bottom: 15,
          child: Text(
            text,
            style: const TextStyle(
              color: CustomColors.scaffoldColor,
              fontWeight: FontWeight.bold,
              fontSize: 14,
            ),
          ),
        ),
      ],
    );
  }
}
