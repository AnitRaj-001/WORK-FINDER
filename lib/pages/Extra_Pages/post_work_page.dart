import 'package:flutter/material.dart';
import 'package:work_finder/constant/colors/custom_colors.dart';
import 'package:work_finder/pages/Extra_Pages/post_page_widget/custom_image_picker.dart';
import 'package:work_finder/pages/Extra_Pages/post_page_widget/details_form.dart';

class PostWorkPage extends StatelessWidget {
  const PostWorkPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColors.backgroundColor,
      body: SafeArea(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
              decoration: BoxDecoration(
                color: CustomColors.backgroundColor,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.3), // Shadow color
                    spreadRadius: 2, // Spread area
                    blurRadius: 6, // Blur effect
                    offset: const Offset(0, 4), // Shadow only on bottom
                  ),
                ],
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      SizedBox(
                        height: 32,
                        width: 32, // Constrain IconButton's size
                        child: IconButton(
                          icon: const Icon(Icons.close, size: 20, color: CustomColors.dark),
                          onPressed: () {
                            Navigator.pop(context); // Navigate back
                          },
                          padding: EdgeInsets.zero, // Remove extra padding
                          constraints: const BoxConstraints(), // Tighten the constraints
                        ),
                      ),
                      const SizedBox(width: 2),
                      const Text(
                        "Post Your Requirement",
                        style: TextStyle(
                          fontSize: 16,
                          color: CustomColors.dark,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: CustomColors.primaryColor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
                    ),
                    onPressed: () {
                      // Add functionality
                    },
                    child: const Text(
                      "Post",
                      style: TextStyle(
                        fontSize: 16,
                        color: CustomColors.dark,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 15),
            const DetailsForm(),
             Padding(
               padding: const EdgeInsets.symmetric(horizontal: 18.0),
               child: Column(
                 children: [
                  const CustomImagePicker(),
                   Row(
                children: [
                  const Icon(Icons.emergency_recording_rounded),
                  TextButton(onPressed: (){}, child: const Text("Take a Video",style: TextStyle(fontSize: 17,color: CustomColors.dark),))
                ],
               ),
               Row(
                children: [
                  const Icon(Icons.edit_document),
                  TextButton(onPressed: (){}, child: const Text("Add a document",style: TextStyle(fontSize: 17,color: CustomColors.dark),))
                ],
               )
                 ],
               ),
             )

          ],
        ),
      ),
    );
  }
}
