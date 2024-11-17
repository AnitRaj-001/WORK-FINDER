// ignore_for_file: deprecated_member_use_from_same_package

import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:work_finder/constant/colors/custom_colors.dart';
import 'package:work_finder/constant/gen/assets.dart';
import 'package:work_finder/pages/homepage/homepage.dart';
import 'package:work_finder/pages/order/order_page.dart';
import 'package:work_finder/pages/search/search_page.dart';

class CustomBottomNavigation extends HookConsumerWidget {
  const CustomBottomNavigation({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final currentIndex = useState<int>(0);
    final tabController = useTabController(initialLength: 4); // Updated to 4

    useEffect(() {
      tabController.addListener(() {
        currentIndex.value = tabController.index;
      });
      return null; // Ensures cleanup function
    }, [tabController]);

    return Scaffold(
      body: TabBarView(
        controller: tabController,
        physics: const NeverScrollableScrollPhysics(),
        children:  [
          Homepage(),
          const SearchPage(), // Placeholder for Discover
          const OrderPage(),    // Placeholder for Order
          const Center(child: Text('Profile Page')),  // Placeholder for Profile
        ],
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: CustomColors.primaryColor,
          border: Border(
            top: BorderSide(width: 1, color: Colors.grey.shade300),
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.yellow.withOpacity(0.1),
              spreadRadius: 1,
              blurRadius: 10,
              offset: const Offset(0, -1),
            ),
          ],
        ),
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: TabBar(
          padding: EdgeInsets.zero,
          controller: tabController,
          labelPadding: EdgeInsets.zero,
          indicator: const BoxDecoration(),
          indicatorPadding: EdgeInsets.zero,
          labelStyle: const TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w600,
            color: CustomColors.dark,
          ),
          unselectedLabelStyle: const TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w500,
            color: CustomColors.fontcolor,
          ),
          tabs: [
            Tab(
              text: 'Homepage',
              icon: SvgPicture.asset(
                SvgAssets.home,
                color: currentIndex.value == 0
                    ? CustomColors.dark
                    : CustomColors.fontcolor,
              ),
            ),
            Tab(
              text: 'Discover',
              icon: SvgPicture.asset(
                SvgAssets.search,
                color: currentIndex.value == 1
                    ? CustomColors.dark
                    : CustomColors.fontcolor,
              ),
            ),
            Tab(
              text: 'Order',
              icon: SvgPicture.asset(
                SvgAssets.order,
                color: currentIndex.value == 2
                    ? CustomColors.dark
                    : CustomColors.fontcolor,
              ),
            ),
            Tab(
              text: 'Profile',
              icon: SvgPicture.asset(
                SvgAssets.profile,
                color: currentIndex.value == 3
                    ? CustomColors.dark
                    : CustomColors.fontcolor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
