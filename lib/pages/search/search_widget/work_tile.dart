import 'package:flutter/material.dart';
import 'package:work_finder/constant/colors/custom_colors.dart';

class WorkTile extends StatelessWidget {
  final String imagePath;
  final String title;

  const WorkTile({
    super.key,
    required this.imagePath,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: CustomColors.primaryColor,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        children: [
          Expanded(
            flex: 2, // 2/3 of the tile height for the image section
            child: Container(
              alignment: Alignment.center,
              child: Image.asset(
                imagePath,
                height: 70,
                width: 70,
                fit: BoxFit.contain, // Ensures the image fits within 70x70.
              ),
            ),
          ),
          Expanded(
            flex: 1, // 1/3 of the tile height for the title section
            child: Container(
              decoration: BoxDecoration(
                color: Colors.black12.withOpacity(0.7),
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(12),
                  bottomRight: Radius.circular(12),
                ),
              ),
              child: Center(
                child: Text(
                  title,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    color: CustomColors.scaffoldColor,
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
