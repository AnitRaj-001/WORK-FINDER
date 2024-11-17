import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:work_finder/constant/colors/custom_colors.dart';
import 'package:work_finder/custom_bottom_navigation.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ProviderScope(
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primaryColor: CustomColors.primaryColor,
          scaffoldBackgroundColor: CustomColors.backgroundColor,
          useMaterial3: false,
        ),
        home: const CustomBottomNavigation(),
      ),
    );
  }
}