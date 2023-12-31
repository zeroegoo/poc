import 'package:employee_app/screens/bottom_navigation_bar_view.dart';
import 'package:employee_app/screens/login_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import 'Languages/Languages.dart';

void main() {

  runApp(
    ProviderScope(
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([ // ป้องกันไม่ให้ app เปลี่ยนเป็นแนวนอน
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return GetMaterialApp(
          translations: Languages(), // กำหนดคลาสที่เก็บข้อมูลภาษา
          locale: Locale('en'), // กำหนดภาษาเริ่มต้น
          fallbackLocale: Locale('th'), // กำหนดภาษา fallback ให้เป็นภาษาอังกฤษ
          // supportedLocales: [
          //   Locale('mm'), // รายการภาษาที่คุณสนับสนุน
          //   Locale('la'), // รายการภาษาที่คุณสนับสนุน
          //   Locale('kh'), // รายการภาษาที่คุณสนับสนุน
          // ],
          initialRoute: '/login',
          routes: <String, WidgetBuilder>{
            '/login': (BuildContext context) => Login_View(),
            // '/': (BuildContext context) => RootPage(),
            // '/notifytowork': (BuildContext context) => NotificationsPages(),
          },
        );
      },

      // child: SafeArea(
      //   child: BottomNavigationBarExample(),
      // ),
    );
  }
}

final currentLanguage = StateProvider((ref) => ('en'));
final notificationCountProvider = StateProvider((ref) => 0);
