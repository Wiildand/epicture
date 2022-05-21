import 'package:epicture/app/constant.dart';
import 'package:epicture/app/exception.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:dio/dio.dart';

final _clientProvider = Provider(
      (ref) => Dio(
    BaseOptions(
      baseUrl: AppConstant.schemeHttps + '://' + AppConstant.imgurUrlApi,
      headers: {
        'Authorization': AppConstant.imgurTokenType + '-' + AppConstant.imgurAccessToken,
      },
    ),
  ),
);

final imgurAccountRepositoryProvider = Provider<ImgurImageRepository>((ref) => ImgurImageRepository(ref.read));

class ImgurImageRepository {
  final Reader read;

  ImgurImageRepository(this.read);

  dynamic getImage(String imageHash) async {
    try {
      final response = await read(_clientProvider).get('/3/image/$imageHash');

      return response.toString();
    } on DioError catch (error) {
      throw DataException.fromDioError(error);
    }
  }

  dynamic postImage(Map<String, dynamic> body) async {
    try {
      final response = await read(_clientProvider).post('/3/image', data: body);

      return response.toString();
    } on DioError catch (error) {
      throw DataException.fromDioError(error);
    }
  }

  dynamic deleteImage(String imageDeleteHash) async {
    try {
      final response = await read(_clientProvider).delete('3/image/$imageDeleteHash');

      return response.toString();
    } on DioError catch (error) {
      throw DataException.fromDioError(error);
    }
  }

  dynamic updateImage(String imageUpdateHash, Map<String, dynamic> body) async {
    try {
      final response = await read(_clientProvider).post('3/image/$imageUpdateHash', data: body);

      return response.toString();
    } on DioError catch (error) {
      throw DataException.fromDioError(error);
    }
  }

  dynamic addFavoriteImage(String imageFavoriteHash) async {
    try {
      final response = await read(_clientProvider).post('3/image/$imageFavoriteHash/favorite');

      return response.toString();
    } on DioError catch (error) {
      throw DataException.fromDioError(error);
    }
  }
}
