import 'package:hooks_riverpod/hooks_riverpod.dart';

final profileNavigationProvider = StateNotifierProvider<ProfileNotifier, ProfileSectionModel>((ref) => ProfileNotifier());

enum ProfileBarEvent {
  postsSection,
  favoritesSection,
  commentsSection,
  aboutSection,
}

class ProfileNotifier extends StateNotifier<ProfileSectionModel> {
  ProfileNotifier() : super(defaultSection);

  static const defaultSection = ProfileSectionModel(ProfileBarEvent.postsSection, 0);

  void selectPage(int i) {
    switch (i) {
      case 0:
        state = ProfileSectionModel(ProfileBarEvent.postsSection, i);
        break;
      case 1:
        state = ProfileSectionModel(ProfileBarEvent.favoritesSection, i);
        break;
      case 2:
        state = ProfileSectionModel(ProfileBarEvent.commentsSection, i);
        break;
      case 3:
        state = ProfileSectionModel(ProfileBarEvent.aboutSection, i);
        break;
      default:
        state = const ProfileSectionModel(ProfileBarEvent.postsSection, 0);
        break;
    }
  }
}

class ProfileSectionModel {
  const ProfileSectionModel(this.page, this.index);

  final ProfileBarEvent page;
  final int index;
}