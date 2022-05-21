import 'package:epicture/app/color.dart';
import 'package:epicture/generated/locale_keys.g.dart';
import 'package:epicture/provider/profile_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class ProfileNavigatorSection extends HookConsumerWidget {
  const ProfileNavigatorSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return BottomNavigationBar(
      items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          label: LocaleKeys.profilePostsTitle.trim(),
          tooltip: 'POSTS',
          icon: const Icon(
            Icons.grid_3x3_outlined,
          ),
        ),
        BottomNavigationBarItem(
          label: LocaleKeys.profileFavoritesTitle.trim(),
          tooltip: 'FAVORITES',
          icon: const Icon(
            Icons.favorite_outlined,
          ),
        ),
        BottomNavigationBarItem(
          label: LocaleKeys.profileCommentsTitle.trim(),
          tooltip: 'COMMENTS',
          icon: const Icon(
            Icons.comment,
          ),
        ),
        BottomNavigationBarItem(
          label: LocaleKeys.profileAboutTitle.trim(),
          tooltip: 'ABOUT',
          icon: const Icon(
            Icons.info_outlined,
          ),
        ),
      ],
      onTap: (int index) {
        ref.read(profileNavigationProvider.notifier).selectPage(index);
      },
      currentIndex: ref.watch(profileNavigationProvider).index,
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
      showSelectedLabels: true,
      showUnselectedLabels: true,
    );
  }
}
