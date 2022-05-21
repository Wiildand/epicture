import 'package:epicture/app/color.dart';
import 'package:epicture/app/key.dart';
import 'package:epicture/generated/locale_keys.g.dart';
import 'package:epicture/pages/home_page.dart';
import 'package:epicture/pages/last_video_page.dart';
import 'package:epicture/pages/profile_page.dart';
import 'package:epicture/pages/search_page.dart';
import 'package:epicture/pages/shop_page.dart';
import 'package:epicture/provider/navigation_provider.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class NavigationPage extends HookConsumerWidget {
  final String title;

  const NavigationPage({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final PageModel navigation = ref.watch(navigationProvider);

    return Scaffold(
      appBar: _buildAppBar(context),
      body: currentScreen(navigation.index),
      bottomNavigationBar: _buildBottomNavigationBar(context, ref),
      backgroundColor: AppColor.secondaryColor,
      resizeToAvoidBottomInset: true,
      primary: true,
      drawerDragStartBehavior: DragStartBehavior.start,
      extendBody: false,
      extendBodyBehindAppBar: false,
      drawerEnableOpenDragGesture: true,
      endDrawerEnableOpenDragGesture: true,
    );
  }

  AppBar _buildAppBar(BuildContext context) {
    return AppBar(
      leading: _buildLeading(),
      automaticallyImplyLeading: true,
      title: Text(title),
      actions: _buildAction(context),
      elevation: 5,
      shadowColor: AppColor.black,
      backgroundColor: AppColor.primaryColor,
      foregroundColor: AppColor.white,
      iconTheme: IconThemeData(
        color: AppColor.white,
        size: 60.sp,
        opacity: 1,
      ),
      actionsIconTheme: IconThemeData(
        color: AppColor.white,
        size: 60.sp,
        opacity: 1,
      ),
      primary: true,
      centerTitle: true,
      excludeHeaderSemantics: false,
      toolbarOpacity: 1.0,
      bottomOpacity: 1.0,
      toolbarHeight: 150.sp,
      leadingWidth: 250.sp,
    );
  }

  Widget? _buildLeading() => Image.network("https://pbs.twimg.com/profile_images/1112777002073931776/xR2ZYH5O_400x400.png");

  List<Widget> _buildAction(BuildContext context) => [
        IconButton(
          icon: const Icon(
            Icons.add_box_outlined,
            key: Keys.uploadImageVideo,
          ),
          tooltip: 'Upload',
          onPressed: () {
            Navigator.pushNamed(context, '/upload');
          },
        ),
        IconButton(
          icon: const Icon(
            Icons.circle_notifications_outlined,
            key: Keys.checkNotification,
          ),
          tooltip: 'Notifications',
          onPressed: () {
            Navigator.pushNamed(context, '/notifications');
          },
        ),
        IconButton(
          icon: const Icon(
            Icons.message_outlined,
            key: Keys.checkMessages,
          ),
          tooltip: 'Message',
          onPressed: () {
            Navigator.pushNamed(context, '/messages');
          },
        ),
      ];

  Widget _buildBottomNavigationBar(BuildContext context, WidgetRef ref) {
    final PageModel navigation = ref.watch(navigationProvider);

    return BottomNavigationBar(
      key: Keys.navigationBar,
      items: [
        BottomNavigationBarItem(
          label: LocaleKeys.homeTitle.trim(),
          tooltip: 'Accueil',
          icon: Icon(Icons.home_outlined, size: 60.sp, key: Keys.homePage),
        ),
        BottomNavigationBarItem(
          label: LocaleKeys.searchTitle.trim(),
          tooltip: 'Recherche',
          icon: Icon(Icons.search_outlined, size: 60.sp, key: Keys.searchPage),
        ),
        BottomNavigationBarItem(
          label: LocaleKeys.lastVideoTitle.trim(),
          tooltip: 'Dernière vidéo',
          icon: Icon(Icons.smart_display_outlined, size: 60.sp, key: Keys.lastVideoPage),
        ),
        BottomNavigationBarItem(
          label: LocaleKeys.shopTitle.trim(),
          tooltip: 'Boutique',
          icon: Icon(Icons.shop_outlined, size: 60.sp, key: Keys.shopPage),
        ),
        BottomNavigationBarItem(
          label: LocaleKeys.accountTitle.trim(),
          tooltip: 'Profile',
          icon: Icon(Icons.account_circle_outlined, size: 60.sp, key: Keys.profilePage),
        ),
      ],
      onTap: (int index) {
        ref.read(navigationProvider.notifier).selectPage(index);
      },
      currentIndex: navigation.index,
      elevation: 0,
      type: BottomNavigationBarType.fixed,
      backgroundColor: AppColor.primaryColor,
      iconSize: 35.0.sp,
      selectedItemColor: Colors.white,
      unselectedItemColor: Colors.white,
      selectedIconTheme: IconThemeData(
        color: AppColor.primaryButtonColor,
        opacity: 1,
        size: 55.0.sp,
      ),
      unselectedIconTheme: IconThemeData(
        color: AppColor.white,
        opacity: 1,
        size: 30.0.sp,
      ),
      showSelectedLabels: false,
      showUnselectedLabels: false,
    );
  }

  Widget currentScreen(int index) {
    switch (index) {
      case 0:
        return const HomePage();
      case 1:
        return const SearchPage();
      case 2:
        return const LastVideoPage();
      case 3:
        return const ShopPage();
      case 4:
        return const ProfilePage();
      default:
        return const HomePage();
    }
  }
}
