import 'package:hooks_riverpod/hooks_riverpod.dart';

final navigationProvider = StateNotifierProvider<NavigationNotifier, PageModel>((ref) => NavigationNotifier());

enum NavigationBarEvent {
  homePage,
  searchPage,
  lastVideoPage,
  shopPage,
  profilePage,
}

class NavigationNotifier extends StateNotifier<PageModel> {
  NavigationNotifier() : super(defaultPage);

  static const defaultPage = PageModel(NavigationBarEvent.homePage, 0);

  void selectPage(int i) {
    switch (i) {
      case 0:
        state = PageModel(NavigationBarEvent.homePage, i);
        break;
      case 1:
        state = PageModel(NavigationBarEvent.searchPage, i);
        break;
      case 2:
        state = PageModel(NavigationBarEvent.lastVideoPage, i);
        break;
      case 3:
        state = PageModel(NavigationBarEvent.shopPage, i);
        break;
      case 4:
        state = PageModel(NavigationBarEvent.profilePage, i);
        break;
      default:
        state = const PageModel(NavigationBarEvent.homePage, 0);
        break;
    }
  }
}

class PageModel {
  const PageModel(this.page, this.index);

  final NavigationBarEvent page;
  final int index;
}
