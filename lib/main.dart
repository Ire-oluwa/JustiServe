import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:justiserve/constants.dart';
import 'package:justiserve/route/app.screens.dart';
import 'package:justiserve/route/route.name.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 667),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (BuildContext context, Widget? child) {
        return GetMaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Justi Serve',
          theme: ThemeData(
            useMaterial3: true,
            scaffoldBackgroundColor: AppColours.primaryGrey,
            fontFamily: GoogleFonts.lato().fontFamily,
          ),
          initialRoute: RouteName.splash,
          getPages: AppScreen.screens,
        );
      },
    );
  }
}
