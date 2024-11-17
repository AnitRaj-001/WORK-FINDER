import 'package:flutter/material.dart';
import 'package:work_finder/common/common_widget/home_header.dart';
import 'package:work_finder/common/header_title.dart';
import 'package:work_finder/constant/colors/custom_colors.dart';
import 'package:work_finder/constant/gen/assets.dart';
import 'package:work_finder/pages/homepage/homepage_widget/job_card.dart';
import 'package:work_finder/pages/homepage/homepage_widget/work_type_card.dart';

class Homepage extends StatelessWidget {
  Homepage({super.key});

  final List<Map<String, String>> workTypes = [
    {"imagePath": ImageAssets.painter, "text": "Wall Painter"},
    {"imagePath":ImageAssets.mechanic, "text": "Plumber"},
    {"imagePath": ImageAssets.construction, "text": "Labour"},
    {"imagePath": ImageAssets.electrician, "text": "Electrician"},
    {"imagePath": ImageAssets.maid, "text": "Home Maid"},
    {"imagePath": ImageAssets.driver, "text": "Driver"},
    {"imagePath": ImageAssets.cook, "text": "Waiter"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColors.backgroundColor,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 60),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const HomeHeader(),
              const SizedBox(height: 25),
              const HeaderTitle(title: "Work Category"),
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.only(left: 8),
                child: SizedBox(
                  height: 81, 
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 7,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: WorkTypeCard(
                          imagePath: workTypes[index]["imagePath"]!,
                          text: workTypes[index]["text"]!,
                        ),
                      );
                    },
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 16.0),
                child: Row(
                  children: [
                    const Row(
                      children: [
                        Icon(
                          Icons.circle,
                          size: 14,
                          color: CustomColors.fontcolor,
                        ),
                        HeaderTitle(title: "Wall Painter")
                      ],
                    ),
                    const Spacer(),
                    Image.asset(ImageAssets.image1)
                  ],
                ),
              ),
              const JobCard(),
              const SizedBox(height: 10,),
        
              Padding(
                padding: const EdgeInsets.only(left: 16.0),
                child: Row(
                  children: [
                    const Row(
                      children: [
                        Icon(
                          Icons.circle,
                          size: 14,
                          color: CustomColors.fontcolor,
                        ),
                        HeaderTitle(title: "Construction")
                      ],
                    ),
                    const SizedBox(width: 50,),
                    Image.asset(ImageAssets.image2)
                  ],
                ),
              ),
              const JobCard()
            ],
          ),
        ),
      ),
    );
  }
}
