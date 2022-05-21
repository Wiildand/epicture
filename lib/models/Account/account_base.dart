import 'dart:convert';

/// id : 139521127
/// url : "wiildand"
/// bio : "Voici ma biographie"
/// avatar : "https://imgur.com/user/wiildand/avatar?maxwidth=290"
/// avatar_name : "default/W"
/// cover : "https://imgur.com/user/wiildand/cover?maxwidth=2560"
/// cover_name : "default/1-space"
/// reputation : -8
/// reputation_name : "Neutral"
/// created : 1602273266
/// pro_expiration : false
/// user_follow : {"status":false}
/// is_blocked : false

AccountBase accountBaseFromJson(String str) => AccountBase.fromJson(json.decode(str));

String accountBaseToJson(AccountBase data) => json.encode(data.toJson());

class AccountBase {
  AccountBase({
    int? id,
    String? url,
    String? bio,
    String? avatar,
    String? avatarName,
    String? cover,
    String? coverName,
    int? reputation,
    String? reputationName,
    int? created,
    bool? proExpiration,
    UserFollow? userFollow,
    bool? isBlocked,
  }) {
    _id = id;
    _url = url;
    _bio = bio;
    _avatar = avatar;
    _avatarName = avatarName;
    _cover = cover;
    _coverName = coverName;
    _reputation = reputation;
    _reputationName = reputationName;
    _created = created;
    _proExpiration = proExpiration;
    _userFollow = userFollow;
    _isBlocked = isBlocked;
  }

  AccountBase.fromJson(dynamic json) {
    _id = json['id'];
    _url = json['url'];
    _bio = json['bio'];
    _avatar = json['avatar'];
    _avatarName = json['avatar_name'];
    _cover = json['cover'];
    _coverName = json['cover_name'];
    _reputation = json['reputation'];
    _reputationName = json['reputation_name'];
    _created = json['created'];
    _proExpiration = json['pro_expiration'];
    _userFollow = json['user_follow'] != null ? UserFollow.fromJson(json['user_follow']) : null;
    _isBlocked = json['is_blocked'];
  }

  int? _id;
  String? _url;
  String? _bio;
  String? _avatar;
  String? _avatarName;
  String? _cover;
  String? _coverName;
  int? _reputation;
  String? _reputationName;
  int? _created;
  bool? _proExpiration;
  UserFollow? _userFollow;
  bool? _isBlocked;

  AccountBase copyWith({
    int? id,
    String? url,
    String? bio,
    String? avatar,
    String? avatarName,
    String? cover,
    String? coverName,
    int? reputation,
    String? reputationName,
    int? created,
    bool? proExpiration,
    UserFollow? userFollow,
    bool? isBlocked,
  }) =>
      AccountBase(
        id: id ?? _id,
        url: url ?? _url,
        bio: bio ?? _bio,
        avatar: avatar ?? _avatar,
        avatarName: avatarName ?? _avatarName,
        cover: cover ?? _cover,
        coverName: coverName ?? _coverName,
        reputation: reputation ?? _reputation,
        reputationName: reputationName ?? _reputationName,
        created: created ?? _created,
        proExpiration: proExpiration ?? _proExpiration,
        userFollow: userFollow ?? _userFollow,
        isBlocked: isBlocked ?? _isBlocked,
      );

  int? get id => _id;

  String? get url => _url;

  String? get bio => _bio;

  String? get avatar => _avatar;

  String? get avatarName => _avatarName;

  String? get cover => _cover;

  String? get coverName => _coverName;

  int? get reputation => _reputation;

  String? get reputationName => _reputationName;

  int? get created => _created;

  bool? get proExpiration => _proExpiration;

  UserFollow? get userFollow => _userFollow;

  bool? get isBlocked => _isBlocked;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['url'] = _url;
    map['bio'] = _bio;
    map['avatar'] = _avatar;
    map['avatar_name'] = _avatarName;
    map['cover'] = _cover;
    map['cover_name'] = _coverName;
    map['reputation'] = _reputation;
    map['reputation_name'] = _reputationName;
    map['created'] = _created;
    map['pro_expiration'] = _proExpiration;
    if (_userFollow != null) {
      map['user_follow'] = _userFollow?.toJson();
    }
    map['is_blocked'] = _isBlocked;
    return map;
  }
}

/// status : false

UserFollow userFollowFromJson(String str) => UserFollow.fromJson(json.decode(str));

String userFollowToJson(UserFollow data) => json.encode(data.toJson());

class UserFollow {
  UserFollow({
    bool? status,
  }) {
    _status = status;
  }

  UserFollow.fromJson(dynamic json) {
    _status = json['status'];
  }

  bool? _status;

  UserFollow copyWith({
    bool? status,
  }) =>
      UserFollow(
        status: status ?? _status,
      );

  bool? get status => _status;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['status'] = _status;
    return map;
  }
}
