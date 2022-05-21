import 'package:epicture/pages/profile_page/about_section.dart';
import 'package:epicture/pages/profile_page/comments_section.dart';
import 'package:epicture/pages/profile_page/favorites_section.dart';
import 'package:epicture/pages/profile_page/posts_section.dart';
import 'package:epicture/provider/profile_provider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class ProfileSection extends HookConsumerWidget {
  const ProfileSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final ProfileSectionModel navigation = ref.watch(profileNavigationProvider);

    return currentSection(navigation.index);
  }

  Widget currentSection(int index) {
    switch (index) {
      case 0:
        return const PostsSection();
      case 1:
        return const FavoritesSection();
      case 2:
        return const CommentsSection();
      case 3:
        return const AboutSection();
      default:
        return const PostsSection();
    }
  }
}
