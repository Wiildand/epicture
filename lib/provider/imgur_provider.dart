import 'package:epicture/app/constant.dart';
import 'package:epicture/models/user_connected.dart';
import 'package:epicture/provider/user_connected_provider.dart';
import 'package:epicture/util/function.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:dio/dio.dart';

final clientProviderBearAuthorization = Provider(
  (ref) {
    UserConnected _userConnected = ref.read(userConnectedProvider).getUserConnected();

    displayer("clientProviderBearAuthorization", _userConnected.toJson().toString());

    return Dio(
      BaseOptions(
        baseUrl: 'https://api.imgur.com/3',
        headers: {
          'Authorization': 'Bearer ${AppConstant.imgurAccessToken}',
        },
      ),
    );
  },
);

final clientProviderClientIdAuthorization = Provider(
  (ref) => Dio(
    BaseOptions(
      baseUrl: 'https://api.imgur.com/3',
      headers: {
        'Authorization': 'Client-ID ${AppConstant.imgurClientId}',
      },
    ),
  ),
);
