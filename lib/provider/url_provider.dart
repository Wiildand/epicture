import 'package:epicture/app/constant.dart';
import 'package:epicture/util/function.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final urlRepositoryProvider = Provider((_) => _UrlRepository());

class _UrlRepository {
  String connexion() => createUri(uri: '/oauth2/authorize', queryParameters: {
        'client_id': AppConstant.imgurClientId,
        'response_type': AppConstant.imgurResponseType,
      }).toString();
}
