import 'package:epicture/models/user_connected.dart';
import 'package:epicture/pages/navigation_page.dart';
import 'package:epicture/provider/url_provider.dart';
import 'package:epicture/provider/user_connected_provider.dart';
import 'package:epicture/util/function.dart';
import 'package:flutter/material.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class ImgurLoginPage extends ConsumerWidget {
  ImgurLoginPage({Key? key}) : super(key: key);
  late bool _isLoggedIn = false;
  final FlutterWebviewPlugin _webViewPlugin = FlutterWebviewPlugin();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    webViewListen(context, ref);
    if (!_isLoggedIn) {
      return WebviewScaffold(url: ref.read(urlRepositoryProvider).connexion());
    } else {
      return const NavigationPage(title: "Epicture");
    }
  }

  void webViewListen(BuildContext context, WidgetRef ref) {
    _webViewPlugin.onStateChanged.listen((WebViewStateChanged state) {
      Uri uri = Uri.parse(state.url.replaceFirst('#', '?'));

      if (uri.query.contains('access_token')) {
        displayer("ImgurLoginPage::webViewListen", uri.queryParameters.toString());
        ref.read(userConnectedProvider).setUserConnected(UserConnected.fromJson(uri.queryParameters));
        displayer("ImgurLoginPage::webViewListen", ref.read(userConnectedProvider).getUserConnected().accountId.toString());
        _isLoggedIn = ref.read(userConnectedProvider).getUserConnected().accountId == null ? false : true;
        if (_isLoggedIn) {
          _webViewPlugin.close();
          Navigator.pushReplacementNamed(context, '/homepage');
        }
      }
    });
  }
}
