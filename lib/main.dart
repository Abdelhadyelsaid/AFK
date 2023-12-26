import 'package:afk_task/View/Screens/Home_Screen.dart';
import 'package:afk_task/View/Screens/LoginScreen.dart';
import 'package:afk_task/View/Screens/welcome.dart';
import 'package:afk_task/helper/cache_helper.dart';
import 'package:afk_task/helper/dio_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await CacheHelper.init();
  DioHelper.init();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(360, 760),
        builder: (_, child) => MaterialApp(
              theme: ThemeData(
                colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
                useMaterial3: true,
              ),
              debugShowCheckedModeBanner: false,
              home: Welcome(),
            ));
  }
}
