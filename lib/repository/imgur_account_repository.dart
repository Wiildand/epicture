import 'package:epicture/app/constant.dart';
import 'package:epicture/app/exception.dart';
import 'package:epicture/models/Account/account_base.dart';
import 'package:epicture/models/Account/account_image.dart';
import 'package:epicture/provider/imgur_provider.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:dio/dio.dart';

final imgurAccountRepositoryProvider = Provider<ImgurAccountRepository>((ref) => ImgurAccountRepository(ref.read));

class ImgurAccountRepository {
  final Reader read;

  ImgurAccountRepository(this.read);

  Future<AccountBase> getAccountBase(String username) async {
    try {
      final response = await read(clientProviderClientIdAuthorization).get('/account/$username');

      return AccountBase.fromJson(response.data['data']);
    } on DioError catch (error) {
      throw DataException.fromDioError(error);
    }
  }

  Future<AccountImage> getAccountImages({String username = 'me'}) async {
    try {
      final response = await read(clientProviderBearAuthorization).get('/account/$username/images');

      return AccountImage.fromJson(response.data);
    } on DioError catch (error) {
      throw DataException.fromDioError(error);
    }
  }

  Future<Response> logout() async {
    try {
      return await read(clientProviderBearAuthorization).post('/logout', queryParameters: {
        'client_id': AppConstant.imgurAccountId,
      });
    } on DioError catch (error) {
      throw DataException.fromDioError(error);
    }
  }
}
