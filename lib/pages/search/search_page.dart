import 'package:flutter/material.dart';
import 'package:work_finder/common/common_widget/home_header.dart';
import 'package:work_finder/constant/colors/custom_colors.dart';
import 'package:work_finder/constant/gen/assets.dart';
import 'package:work_finder/pages/search/search_widget/work_tile.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 60),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const HomeHeader(),
          const SizedBox(height: 40),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Text(
              "अपने मार्ग का कार्य\nचुनें। Work Category",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: CustomColors.fontcolor,
                fontFamily: 'DevanagariFont',
              ),
              textAlign: TextAlign.start,
            ),
          ),
          const SizedBox(height: 16),
          const Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: WorkGrid(),
            ),
          ),
         
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset(ImageAssets.image2,),
                  Image.asset(ImageAssets.image4),
                  Image.asset(ImageAssets.image3),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

class WorkGrid extends StatelessWidget {
  const WorkGrid({super.key});

  @override
  Widget build(BuildContext context) {
    // Data for tiles
    final List<Map<String, String>> workData = [
      {'imagePath': ImageAssets.painter, 'title': 'Wall Painter'},
      {'imagePath': ImageAssets.electrician, 'title': 'Electrician'},
      {'imagePath': ImageAssets.mechanic, 'title': 'Plumber'},
      {'imagePath': ImageAssets.maid, 'title': 'Maid'},
      {'imagePath': ImageAssets.cook, 'title': 'Waiter'},
      {'imagePath': ImageAssets.driver, 'title': 'Driver'},
      {'imagePath': ImageAssets.construction, 'title': 'Labour'},
      {'imagePath': ImageAssets.painter, 'title': 'Wall Painter'},
      {'imagePath': ImageAssets.painter, 'title': 'Wall Painter'},
    ];

    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: GridView.builder(
        itemCount: workData.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
        ),
        itemBuilder: (context, index) {
          final work = workData[index];
          return WorkTile(
            imagePath: work['imagePath']!,
            title: work['title']!,
          );
        },
      ),
    );
  }
}
