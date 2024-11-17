import 'package:flutter/material.dart';
import 'package:work_finder/constant/colors/custom_colors.dart';
import 'package:work_finder/constant/gen/assets.dart';

class JobCard extends StatelessWidget {
  const JobCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Container(
        height: 345,
        decoration: BoxDecoration(
          image: const DecorationImage(
            image: AssetImage(ImageAssets.card),
            fit: BoxFit.cover,
          ),
          borderRadius: BorderRadius.circular(18),
          border: Border.all(color: CustomColors.borderColor),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Top section with pay info overlay
            Stack(
              children: [
                Container(
                  height: 200,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(18),
                  ),
                ),
                Positioned(
                  top: 10,
                  left: 10,
                  child: Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                    decoration: BoxDecoration(
                      color: Colors.black.withOpacity(0.7),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Row(
                      children: [
                        Image.asset(ImageAssets.coin, height: 20, width: 20),
                        const SizedBox(width: 4),
                        const Text(
                          "Pay-₹500/Day",
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                            color: CustomColors.scaffoldColor,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            // Bottom section with address, company info, start date, and buttons
            Container(
              height: 143,
              padding: const EdgeInsets.symmetric(horizontal: 16,vertical: 8),
              decoration: BoxDecoration(
                color: Colors.black.withOpacity(0.6),
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(18),
                  bottomRight: Radius.circular(18),
                ),
              ),
              child: Column(
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            // Address
                            Row(
                              children: [
                                Image.asset(ImageAssets.homeAddress),
                                const SizedBox(width: 6),
                                const Expanded(
                                  child: Text(
                                    '4th Main Rd, Sadashiva Nagar,\nArmane Nagar, Noida',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: CustomColors.scaffoldColor,
                                      fontSize: 12,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 8),
                            // Company name with icon
                            Row(
                              children: [
                                Image.asset(ImageAssets.client,color: CustomColors.scaffoldColor,),
                                const SizedBox(width: 8),
                                const Text(
                                  'Apex Construction',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: CustomColors.scaffoldColor,
                                    fontSize: 12,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(width: 7),
                      Column(
                        children: [
                          const Text(
                            'Work Start Date',
                            style: TextStyle(
                              color: CustomColors.scaffoldColor,
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Image.asset(ImageAssets.calendar),
                        ],
                      ),
                    ],
                  ),
                 const SizedBox(height: 5,),
                  Row(
                    children: [
                      Expanded(
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            backgroundColor: CustomColors.primaryColor,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18),
                            ),
                          ),
                          child: const Text(
                            'Call',
                            style: TextStyle(color: CustomColors.fontcolor,fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                      const SizedBox(width: 8),
                      Expanded(
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            backgroundColor: CustomColors.scaffoldColor,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18),
                            ),
                          ),
                          child: const Text(
                            'Accept Work',
                            style: TextStyle(color: CustomColors.fontcolor,fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
