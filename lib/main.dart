import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kindling/screens/onboarding_screen.dart';
import 'package:kindling/utils/bindings.dart';
import 'package:kindling/utils/constants/colors.dart';
import 'package:kindling/utils/constants/text_styles.dart';
import 'package:nb_utils/nb_utils.dart';

import 'dk/router/my_routing.dart';
import 'dk/screens/my_plan_details_screen.dart';
import 'dk/screens/myplanbuy_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initialize();
  SystemChrome.setPreferredOrientations(
    [
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ],
  );

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(428, 926),
      minTextAdapt: true,
      builder: (context, child) {
        return GetMaterialApp(
          title: 'Kindling',
          initialBinding: MyBindings(),
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            scaffoldBackgroundColor: AppColors.white,
            // dividerColor: AppColors.dividerColor,
            appBarTheme: AppBarTheme(
              elevation: 0,
              backgroundColor: AppColors.white,
              // titleTextStyle: textSize18With500WeightBlack,
            ),
            inputDecorationTheme: InputDecorationTheme(
              isDense: true,
              filled: true,
              floatingLabelBehavior: FloatingLabelBehavior.never,
              disabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(4),
                borderSide: BorderSide(
                  color: AppColors.blue,
                  width: 1,
                ),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(4),
                borderSide: BorderSide(
                  color: AppColors.blue,
                  width: 1,
                ),
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(4),
              ),
              labelStyle: AppTextStyles.textSize14WithWeight400Grey,
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(4),
                borderSide: BorderSide(
                  color: AppColors.blue,
                  width: 1,
                ),
              ),
              fillColor: AppColors.white,
              errorStyle: TextStyle(
                fontSize: 14,
              ),
            ),
            outlinedButtonTheme: OutlinedButtonThemeData(
              style: OutlinedButton.styleFrom(
                primary: AppColors.blue,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(
                    4,
                  ),
                ),
              ),
            ),
            primarySwatch: Colors.blue,
            textTheme: GoogleFonts.poppinsTextTheme(
              Theme.of(context).textTheme,
            ),
          ),
          // home: MyPlansD etailsScreen(),
          initialRoute: '/',
          getPages: MyRouter.route,
        );
      },
    );
  }
}
