import 'package:epicture/app/constant.dart';
import 'package:flutter/material.dart';

Color getPrimaryColor(BuildContext context) => Theme.of(context).primaryColor;

Uri createUri({required String uri, Map<String, dynamic>? queryParameters}) => Uri(
      scheme: AppConstant.schemeHttps,
      host: AppConstant.imgurUrlApi,
      path: uri,
      queryParameters: queryParameters,
    );

void displayer(String functionName, String toDisplay) => print('$functionName : $toDisplay');

bool isNotNull(dynamic value) => value != null;

bool isNull(dynamic value) => value == null;
