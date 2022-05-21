import 'dart:convert';

/// access_token : "6c214b20c2587c6e0487c4afea6af1efb02b0b53"
/// expires_in : 315360000
/// token_type : "bearer"
/// refresh_token : "789cdacdeb1620ba9eff2be61d6a999963b7c9bd"
/// account_username : "wiildand"
/// account_id : 139521127

UserConnected userConnectedFromJson(String str) => UserConnected.fromJson(json.decode(str));

String userConnectedToJson(UserConnected data) => json.encode(data.toJson());

class UserConnected {
  UserConnected({
    String? accessToken,
    String? expiresIn,
    String? tokenType,
    String? refreshToken,
    String? accountUsername,
    String? accountId,
  }) {
    _accessToken = accessToken;
    _expiresIn = expiresIn;
    _tokenType = tokenType;
    _refreshToken = refreshToken;
    _accountUsername = accountUsername;
    _accountId = accountId;
  }

  UserConnected.fromJson(dynamic json) {
    _accessToken = json['access_token'];
    _expiresIn = json['expires_in'];
    _tokenType = json['token_type'];
    _refreshToken = json['refresh_token'];
    _accountUsername = json['account_username'];
    _accountId = json['account_id'];
  }

  String? _accessToken;
  String? _expiresIn;
  String? _tokenType;
  String? _refreshToken;
  String? _accountUsername;
  String? _accountId;

  UserConnected copyWith({
    String? accessToken,
    String? expiresIn,
    String? tokenType,
    String? refreshToken,
    String? accountUsername,
    String? accountId,
  }) =>
      UserConnected(
        accessToken: accessToken ?? _accessToken,
        expiresIn: expiresIn ?? _expiresIn,
        tokenType: tokenType ?? _tokenType,
        refreshToken: refreshToken ?? _refreshToken,
        accountUsername: accountUsername ?? _accountUsername,
        accountId: accountId ?? _accountId,
      );

  String? get accessToken => _accessToken;

  String? get expiresIn => _expiresIn;

  String? get tokenType => _tokenType;

  String? get refreshToken => _refreshToken;

  String? get accountUsername => _accountUsername;

  String? get accountId => _accountId;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['access_token'] = _accessToken;
    map['expires_in'] = _expiresIn;
    map['token_type'] = _tokenType;
    map['refresh_token'] = _refreshToken;
    map['account_username'] = _accountUsername;
    map['account_id'] = _accountId;
    return map;
  }
}
