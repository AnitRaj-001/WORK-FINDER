import 'package:flutter/material.dart';
import 'package:work_finder/common/custom_elevated_button.dart';
import 'package:work_finder/constant/gen/assets.dart';
import 'package:work_finder/pages/Extra_Pages/post_work_page.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Row(
        children: [
          Image.asset(ImageAssets.location),
          const SizedBox(
            width: 4,
          ),
          const Text(
            "Noida",
            style: TextStyle(
                fontSize: 17, fontWeight: FontWeight.bold, color: Colors.brown),
          ),
          const Icon(Icons.arrow_drop_down,color: Colors.brown,),
          const Spacer(),
          CustomElevatedButton(title: "+ Post Work", onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context)=> const PostWorkPage()));
          })
        ],
      ),
    );
  }
}
