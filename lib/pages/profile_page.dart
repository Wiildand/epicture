import 'package:epicture/pages/profile_page/profile_banner_section.dart';
import 'package:epicture/pages/profile_page/profile_navigator_section.dart';
import 'package:epicture/pages/profile_page/profile_section.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class ProfilePage extends HookConsumerWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SingleChildScrollView(
      child: Column(
        children: const [
          ProfileBannerSection(),
          ProfileNavigatorSection(),
          ProfileSection(),
        ],
      ),
    );
  }
}
