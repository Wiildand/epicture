import 'package:epicture/app/constant.dart';
import 'package:epicture/pages/login_page.dart';
import 'package:epicture/pages/messagerie_page.dart';
import 'package:epicture/pages/navigation_page.dart';
import 'package:epicture/pages/notification_page.dart';
import 'package:epicture/pages/profile_page/posts_image_secction.dart';
import 'package:epicture/pages/upload_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

void main() {
  runApp(
    const ProviderScope(
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: AppConstant.mainSize,
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (BuildContext context, Widget? child) {
        return MaterialApp(
          title: 'Named Routes Demo',
          initialRoute: '/connexion',
          routes: {
            '/connexion': (context) => ImgurLoginPage(),
            '/homepage': (context) => const NavigationPage(
                  title: 'Epicture',
                ),
            '/upload': (context) => const UploadPage(),
            '/notifications': (context) => const NotificationPage(),
            '/messages': (context) => const MessagePage(),
          },
          onGenerateRoute: (RouteSettings settings) {
            if (settings.name == '/image-with-hash') {
              return MaterialPageRoute(
                builder: (context) {
                  return PostsImageSection(
                    imageHash: settings.arguments.toString(),
                  );
                },
              );
            }
            assert(false, 'Need to implement ${settings.name}');
            return null;
          },
        );
      },
    );
  }
}
