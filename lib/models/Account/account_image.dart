import 'dart:convert';

/// data : [{"id":"iNQgWQq","title":null,"description":"ping du serveur","datetime":1639393242,"type":"image/png","animated":false,"width":1516,"height":784,"size":170961,"views":3,"bandwidth":512883,"vote":null,"favorite":false,"nsfw":null,"section":null,"account_url":"wiildand","account_id":139521127,"is_ad":false,"in_most_viral":false,"has_sound":false,"ad_type":0,"ad_url":"","edited":"0","in_gallery":false,"deletehash":"wIRz7Eu0O4Q1Q9J","name":"Capture d’écran 2021-12-13 à 19.59.00.png","link":"https://i.imgur.com/iNQgWQq.png"},{"id":"YDpshWO","title":null,"description":"Connexion shh fonctionnelle","datetime":1639393242,"type":"image/png","animated":false,"width":1546,"height":1032,"size":190751,"views":3,"bandwidth":572253,"vote":null,"favorite":false,"nsfw":null,"section":null,"account_url":"wiildand","account_id":139521127,"is_ad":false,"in_most_viral":false,"has_sound":false,"ad_type":0,"ad_url":"","edited":"0","in_gallery":false,"deletehash":"xL64O2lHbjxeBpT","name":"Capture d’écran 2021-12-13 à 19.58.09.png","link":"https://i.imgur.com/YDpshWO.png"},{"id":"FWJn2pH","title":null,"description":null,"datetime":1632100701,"type":"image/png","animated":false,"width":786,"height":438,"size":109676,"views":4,"bandwidth":438704,"vote":null,"favorite":false,"nsfw":null,"section":null,"account_url":"wiildand","account_id":139521127,"is_ad":false,"in_most_viral":false,"has_sound":false,"ad_type":0,"ad_url":"","edited":"0","in_gallery":false,"deletehash":"Ult1NyaqWcZXoTO","name":"erreur2.png","link":"https://i.imgur.com/FWJn2pH.png"},{"id":"gCsHkaB","title":null,"description":null,"datetime":1632100701,"type":"image/png","animated":false,"width":1248,"height":692,"size":158645,"views":4,"bandwidth":634580,"vote":null,"favorite":false,"nsfw":null,"section":null,"account_url":"wiildand","account_id":139521127,"is_ad":false,"in_most_viral":false,"has_sound":false,"ad_type":0,"ad_url":"","edited":"0","in_gallery":false,"deletehash":"daVuEj6KgxDeVgr","name":"erreur1.png","link":"https://i.imgur.com/gCsHkaB.png"},{"id":"kOQQlEg","title":"coucou\t‎","description":"test","datetime":1603450009,"type":"image/jpeg","animated":false,"width":1668,"height":2500,"size":620446,"views":28,"bandwidth":17372488,"vote":null,"favorite":false,"nsfw":null,"section":null,"account_url":"wiildand","account_id":139521127,"is_ad":false,"in_most_viral":false,"has_sound":false,"ad_type":0,"ad_url":"","edited":"0","in_gallery":false,"deletehash":"e3crbiLUBodpOuS","name":null,"link":"https://i.imgur.com/kOQQlEg.jpg"},{"id":"MGTu9IL","title":"test ‎iphone ‎","description":"one ‎more","datetime":1603266138,"type":"image/jpeg","animated":false,"width":4032,"height":3024,"size":985538,"views":122,"bandwidth":120235636,"vote":null,"favorite":false,"nsfw":null,"section":null,"account_url":"wiildand","account_id":139521127,"is_ad":false,"in_most_viral":false,"has_sound":false,"ad_type":0,"ad_url":"","edited":"0","in_gallery":false,"deletehash":"Vk5rpd77WTqsMg0","name":null,"link":"https://i.imgur.com/MGTu9IL.jpg"},{"id":"QLYH2Yu","title":null,"description":null,"datetime":1603264678,"type":"image/png","animated":false,"width":1162,"height":1458,"size":298550,"views":124,"bandwidth":37020200,"vote":null,"favorite":false,"nsfw":null,"section":null,"account_url":"wiildand","account_id":139521127,"is_ad":false,"in_most_viral":false,"has_sound":false,"ad_type":0,"ad_url":"","edited":"0","in_gallery":false,"deletehash":"PiBBY9z0dPGKed9","name":"Capture d’écran 2020-10-11 à 18.18.44.png","link":"https://i.imgur.com/QLYH2Yu.png"},{"id":"1keoc2T","title":null,"description":null,"datetime":1603264678,"type":"image/png","animated":false,"width":4,"height":4,"size":3990,"views":133,"bandwidth":530670,"vote":null,"favorite":false,"nsfw":null,"section":null,"account_url":"wiildand","account_id":139521127,"is_ad":false,"in_most_viral":false,"has_sound":false,"ad_type":0,"ad_url":"","edited":"0","in_gallery":false,"deletehash":"NIhn7VJfMGDptY6","name":"Capture d’écran 2020-10-07 à 12.40.55.png","link":"https://i.imgur.com/1keoc2T.png"},{"id":"zdT0emM","title":"test","description":"coucou","datetime":1603201019,"type":"image/png","animated":false,"width":640,"height":1136,"size":548402,"views":262,"bandwidth":143681324,"vote":null,"favorite":false,"nsfw":null,"section":null,"account_url":"wiildand","account_id":139521127,"is_ad":false,"in_most_viral":false,"has_sound":false,"ad_type":0,"ad_url":"","edited":"0","in_gallery":false,"deletehash":"9eKiHHNTpjmOQn7","name":null,"link":"https://i.imgur.com/zdT0emM.png"},{"id":"UcH1ASp","title":"try ‎test","description":"try ‎test","datetime":1603200379,"type":"image/png","animated":false,"width":640,"height":1136,"size":613861,"views":157,"bandwidth":96376177,"vote":null,"favorite":false,"nsfw":null,"section":null,"account_url":"wiildand","account_id":139521127,"is_ad":false,"in_most_viral":false,"has_sound":false,"ad_type":0,"ad_url":"","edited":"0","in_gallery":false,"deletehash":"6nHduyu3r5CRhd9","name":null,"link":"https://i.imgur.com/UcH1ASp.png"},{"id":"Lmhc6gT","title":"try ‎test","description":"try ‎test","datetime":1603200258,"type":"image/png","animated":false,"width":640,"height":1136,"size":613861,"views":164,"bandwidth":100673204,"vote":null,"favorite":false,"nsfw":null,"section":null,"account_url":"wiildand","account_id":139521127,"is_ad":false,"in_most_viral":false,"has_sound":false,"ad_type":0,"ad_url":"","edited":"0","in_gallery":false,"deletehash":"wT0k2qaRHj8G7wk","name":null,"link":"https://i.imgur.com/Lmhc6gT.png"},{"id":"KsVJGJa","title":"try ‎test","description":"try ‎test","datetime":1603200204,"type":"image/png","animated":false,"width":640,"height":1136,"size":613861,"views":163,"bandwidth":100059343,"vote":null,"favorite":false,"nsfw":null,"section":null,"account_url":"wiildand","account_id":139521127,"is_ad":false,"in_most_viral":false,"has_sound":false,"ad_type":0,"ad_url":"","edited":"0","in_gallery":false,"deletehash":"o1wLRPa5V3vMVHj","name":null,"link":"https://i.imgur.com/KsVJGJa.png"},{"id":"1WgAqAi","title":"try ‎test","description":"try ‎test","datetime":1603200113,"type":"image/png","animated":false,"width":640,"height":1136,"size":613861,"views":171,"bandwidth":104970231,"vote":null,"favorite":false,"nsfw":null,"section":null,"account_url":"wiildand","account_id":139521127,"is_ad":false,"in_most_viral":false,"has_sound":false,"ad_type":0,"ad_url":"","edited":"0","in_gallery":false,"deletehash":"5SR0kj6D66vynlY","name":null,"link":"https://i.imgur.com/1WgAqAi.png"},{"id":"jMZyyEe","title":"try ‎","description":"try ‎","datetime":1603199516,"type":"image/png","animated":false,"width":640,"height":1136,"size":606597,"views":163,"bandwidth":98875311,"vote":null,"favorite":false,"nsfw":null,"section":null,"account_url":"wiildand","account_id":139521127,"is_ad":false,"in_most_viral":false,"has_sound":false,"ad_type":0,"ad_url":"","edited":"0","in_gallery":false,"deletehash":"S1ujcLGpjtWorke","name":null,"link":"https://i.imgur.com/jMZyyEe.png"},{"id":"fu5LFj2","title":"try ‎","description":"try ‎","datetime":1603199394,"type":"image/png","animated":false,"width":640,"height":1136,"size":606597,"views":165,"bandwidth":100088505,"vote":null,"favorite":false,"nsfw":null,"section":null,"account_url":"wiildand","account_id":139521127,"is_ad":false,"in_most_viral":false,"has_sound":false,"ad_type":0,"ad_url":"","edited":"0","in_gallery":false,"deletehash":"fslbuNcSNvn2UV2","name":null,"link":"https://i.imgur.com/fu5LFj2.png"},{"id":"vt8RYei","title":"try ‎","description":"try ‎","datetime":1603199367,"type":"image/png","animated":false,"width":640,"height":1136,"size":606597,"views":165,"bandwidth":100088505,"vote":null,"favorite":false,"nsfw":null,"section":null,"account_url":"wiildand","account_id":139521127,"is_ad":false,"in_most_viral":false,"has_sound":false,"ad_type":0,"ad_url":"","edited":"0","in_gallery":false,"deletehash":"ckUr6U1LTIOneLW","name":null,"link":"https://i.imgur.com/vt8RYei.png"},{"id":"camqsfI","title":"try ‎","description":"try ‎","datetime":1603199341,"type":"image/png","animated":false,"width":640,"height":1136,"size":606597,"views":155,"bandwidth":94022535,"vote":null,"favorite":false,"nsfw":null,"section":null,"account_url":"wiildand","account_id":139521127,"is_ad":false,"in_most_viral":false,"has_sound":false,"ad_type":0,"ad_url":"","edited":"0","in_gallery":false,"deletehash":"MeiJKLa48vVkap5","name":null,"link":"https://i.imgur.com/camqsfI.png"},{"id":"V8A8xqz","title":"try ‎","description":"try ‎","datetime":1603199317,"type":"image/png","animated":false,"width":640,"height":1136,"size":606597,"views":164,"bandwidth":99481908,"vote":null,"favorite":false,"nsfw":null,"section":null,"account_url":"wiildand","account_id":139521127,"is_ad":false,"in_most_viral":false,"has_sound":false,"ad_type":0,"ad_url":"","edited":"0","in_gallery":false,"deletehash":"NGLHIS8OFqUpvtK","name":null,"link":"https://i.imgur.com/V8A8xqz.png"},{"id":"bBv7FHa","title":"more ‎test","description":"picture ‎from ‎tt2 ‏","datetime":1603199260,"type":"image/png","animated":false,"width":640,"height":1136,"size":526930,"views":166,"bandwidth":87470380,"vote":null,"favorite":false,"nsfw":null,"section":null,"account_url":"wiildand","account_id":139521127,"is_ad":false,"in_most_viral":false,"has_sound":false,"ad_type":0,"ad_url":"","edited":"0","in_gallery":false,"deletehash":"MahI7kwn7nJzTfl","name":null,"link":"https://i.imgur.com/bBv7FHa.png"},{"id":"Fep68nt","title":"another ‎test ‎","description":"test ‎picture ‎","datetime":1603199065,"type":"image/jpeg","animated":false,"width":640,"height":954,"size":44548,"views":165,"bandwidth":7350420,"vote":null,"favorite":false,"nsfw":null,"section":null,"account_url":"wiildand","account_id":139521127,"is_ad":false,"in_most_viral":false,"has_sound":false,"ad_type":0,"ad_url":"","edited":"0","in_gallery":false,"deletehash":"68a6u22B6g0BsJu","name":null,"link":"https://i.imgur.com/Fep68nt.jpg"},{"id":"qx2g0Vr","title":"test","description":"test ‎push ‎picture ‎from ‎tel ‎","datetime":1603198652,"type":"image/png","animated":false,"width":640,"height":1136,"size":812151,"views":248,"bandwidth":201413448,"vote":null,"favorite":false,"nsfw":null,"section":null,"account_url":"wiildand","account_id":139521127,"is_ad":false,"in_most_viral":false,"has_sound":false,"ad_type":0,"ad_url":"","edited":"0","in_gallery":false,"deletehash":"44v1c6bezPgbo13","name":null,"link":"https://i.imgur.com/qx2g0Vr.png"},{"id":"zCHbtMi","title":"test ‎photo","description":"this ‎is ‎an ‎other ‎test","datetime":1603194188,"type":"image/jpeg","animated":false,"width":4288,"height":2848,"size":972349,"views":123,"bandwidth":119598927,"vote":null,"favorite":false,"nsfw":null,"section":null,"account_url":"wiildand","account_id":139521127,"is_ad":false,"in_most_viral":false,"has_sound":false,"ad_type":0,"ad_url":"","edited":"0","in_gallery":false,"deletehash":"Fb1ktEwGrkVZtpW","name":null,"link":"https://i.imgur.com/zCHbtMi.jpg"},{"id":"qy3ek34","title":"test","description":"this ‎is ‎a ‎test","datetime":1603193877,"type":"image/jpeg","animated":false,"width":4288,"height":2848,"size":813388,"views":133,"bandwidth":108180604,"vote":null,"favorite":false,"nsfw":null,"section":null,"account_url":"wiildand","account_id":139521127,"is_ad":false,"in_most_viral":false,"has_sound":false,"ad_type":0,"ad_url":"","edited":"0","in_gallery":false,"deletehash":"melC5jkgrXwr4OI","name":null,"link":"https://i.imgur.com/qy3ek34.jpg"},{"id":"N14jGfg","title":null,"description":null,"datetime":1603108736,"type":"image/png","animated":false,"width":3360,"height":2100,"size":2481039,"views":274,"bandwidth":679804686,"vote":null,"favorite":false,"nsfw":null,"section":null,"account_url":"wiildand","account_id":139521127,"is_ad":false,"in_most_viral":false,"has_sound":false,"ad_type":0,"ad_url":"","edited":"0","in_gallery":false,"deletehash":"VTY9dJ4vafG6Vu4","name":"Capture d’écran 2020-10-06 à 11.24.18.png","link":"https://i.imgur.com/N14jGfg.png"},{"id":"PG9rYG5","title":null,"description":null,"datetime":1603108734,"type":"image/png","animated":false,"width":3360,"height":2100,"size":1560239,"views":322,"bandwidth":502396958,"vote":null,"favorite":false,"nsfw":null,"section":null,"account_url":"wiildand","account_id":139521127,"is_ad":false,"in_most_viral":false,"has_sound":false,"ad_type":0,"ad_url":"","edited":"0","in_gallery":false,"deletehash":"cFip1AjyNRWqbzf","name":"Capture d’écran 2020-09-30 à 17.42.40.png","link":"https://i.imgur.com/PG9rYG5.png"},{"id":"45uF6Jz","title":null,"description":null,"datetime":1602596670,"type":"image/png","animated":false,"width":3360,"height":2100,"size":1560239,"views":356,"bandwidth":555445084,"vote":null,"favorite":false,"nsfw":null,"section":null,"account_url":"wiildand","account_id":139521127,"is_ad":false,"in_most_viral":false,"has_sound":false,"ad_type":0,"ad_url":"","edited":"0","in_gallery":false,"deletehash":"KPze1UH4RUglh2D","name":"Capture d’écran 2020-09-30 à 17.42.40.png","link":"https://i.imgur.com/45uF6Jz.png"},{"id":"wIoygwc","title":null,"description":"Image in favorite","datetime":1602588064,"type":"image/png","animated":false,"width":3360,"height":2100,"size":2481039,"views":274,"bandwidth":679804686,"vote":null,"favorite":false,"nsfw":null,"section":null,"account_url":"wiildand","account_id":139521127,"is_ad":false,"in_most_viral":false,"has_sound":false,"ad_type":0,"ad_url":"","edited":"0","in_gallery":false,"deletehash":"XFOsaCykQkZ6YQV","name":"Capture d’écran 2020-10-06 à 11.24.18.png","link":"https://i.imgur.com/wIoygwc.png"},{"id":"rOspBQy","title":null,"description":"Image 1 test","datetime":1602588008,"type":"image/png","animated":false,"width":1552,"height":858,"size":1828138,"views":277,"bandwidth":506394226,"vote":null,"favorite":false,"nsfw":null,"section":null,"account_url":"wiildand","account_id":139521127,"is_ad":false,"in_most_viral":false,"has_sound":false,"ad_type":0,"ad_url":"","edited":"0","in_gallery":false,"deletehash":"LzByGgugt2mzcrZ","name":"Capture d’écran 2020-08-18 à 22.43.32.png","link":"https://i.imgur.com/rOspBQy.png"}]

AccountImage accountImageFromJson(String str) => AccountImage.fromJson(json.decode(str));

String accountImageToJson(AccountImage data) => json.encode(data.toJson());

class AccountImage {
  AccountImage({
    List<ImageAccountData>? data,
  }) {
    _data = data;
  }

  AccountImage.fromJson(dynamic json) {
    if (json['data'] != null) {
      _data = [];
      json['data'].forEach((v) {
        _data?.add(ImageAccountData.fromJson(v));
      });
    }
  }

  List<ImageAccountData>? _data;

  AccountImage copyWith({
    List<ImageAccountData>? data,
  }) =>
      AccountImage(
        data: data ?? _data,
      );

  List<ImageAccountData>? get data => _data;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (_data != null) {
      map['data'] = _data?.map((v) => v.toJson()).toList();
    }
    return map;
  }
}

/// id : "iNQgWQq"
/// title : null
/// description : "ping du serveur"
/// datetime : 1639393242
/// type : "image/png"
/// animated : false
/// width : 1516
/// height : 784
/// size : 170961
/// views : 3
/// bandwidth : 512883
/// vote : null
/// favorite : false
/// nsfw : null
/// section : null
/// account_url : "wiildand"
/// account_id : 139521127
/// is_ad : false
/// in_most_viral : false
/// has_sound : false
/// ad_type : 0
/// ad_url : ""
/// edited : "0"
/// in_gallery : false
/// deletehash : "wIRz7Eu0O4Q1Q9J"
/// name : "Capture d’écran 2021-12-13 à 19.59.00.png"
/// link : "https://i.imgur.com/iNQgWQq.png"

ImageAccountData dataFromJson(String str) => ImageAccountData.fromJson(json.decode(str));

String dataToJson(ImageAccountData data) => json.encode(data.toJson());

class ImageAccountData {
  ImageAccountData({
    String? id,
    dynamic title,
    String? description,
    int? datetime,
    String? type,
    bool? animated,
    int? width,
    int? height,
    int? size,
    int? views,
    int? bandwidth,
    dynamic vote,
    bool? favorite,
    dynamic nsfw,
    dynamic section,
    String? accountUrl,
    int? accountId,
    bool? isAd,
    bool? inMostViral,
    bool? hasSound,
    int? adType,
    String? adUrl,
    String? edited,
    bool? inGallery,
    String? deletehash,
    String? name,
    String? link,
  }) {
    _id = id;
    _title = title;
    _description = description;
    _datetime = datetime;
    _type = type;
    _animated = animated;
    _width = width;
    _height = height;
    _size = size;
    _views = views;
    _bandwidth = bandwidth;
    _vote = vote;
    _favorite = favorite;
    _nsfw = nsfw;
    _section = section;
    _accountUrl = accountUrl;
    _accountId = accountId;
    _isAd = isAd;
    _inMostViral = inMostViral;
    _hasSound = hasSound;
    _adType = adType;
    _adUrl = adUrl;
    _edited = edited;
    _inGallery = inGallery;
    _deletehash = deletehash;
    _name = name;
    _link = link;
  }

  ImageAccountData.fromJson(dynamic json) {
    _id = json['id'];
    _title = json['title'];
    _description = json['description'];
    _datetime = json['datetime'];
    _type = json['type'];
    _animated = json['animated'];
    _width = json['width'];
    _height = json['height'];
    _size = json['size'];
    _views = json['views'];
    _bandwidth = json['bandwidth'];
    _vote = json['vote'];
    _favorite = json['favorite'];
    _nsfw = json['nsfw'];
    _section = json['section'];
    _accountUrl = json['account_url'];
    _accountId = json['account_id'];
    _isAd = json['is_ad'];
    _inMostViral = json['in_most_viral'];
    _hasSound = json['has_sound'];
    _adType = json['ad_type'];
    _adUrl = json['ad_url'];
    _edited = json['edited'];
    _inGallery = json['in_gallery'];
    _deletehash = json['deletehash'];
    _name = json['name'];
    _link = json['link'];
  }

  String? _id;
  dynamic _title;
  String? _description;
  int? _datetime;
  String? _type;
  bool? _animated;
  int? _width;
  int? _height;
  int? _size;
  int? _views;
  int? _bandwidth;
  dynamic _vote;
  bool? _favorite;
  dynamic _nsfw;
  dynamic _section;
  String? _accountUrl;
  int? _accountId;
  bool? _isAd;
  bool? _inMostViral;
  bool? _hasSound;
  int? _adType;
  String? _adUrl;
  String? _edited;
  bool? _inGallery;
  String? _deletehash;
  String? _name;
  String? _link;

  ImageAccountData copyWith({
    String? id,
    dynamic title,
    String? description,
    int? datetime,
    String? type,
    bool? animated,
    int? width,
    int? height,
    int? size,
    int? views,
    int? bandwidth,
    dynamic vote,
    bool? favorite,
    dynamic nsfw,
    dynamic section,
    String? accountUrl,
    int? accountId,
    bool? isAd,
    bool? inMostViral,
    bool? hasSound,
    int? adType,
    String? adUrl,
    String? edited,
    bool? inGallery,
    String? deletehash,
    String? name,
    String? link,
  }) =>
      ImageAccountData(
        id: id ?? _id,
        title: title ?? _title,
        description: description ?? _description,
        datetime: datetime ?? _datetime,
        type: type ?? _type,
        animated: animated ?? _animated,
        width: width ?? _width,
        height: height ?? _height,
        size: size ?? _size,
        views: views ?? _views,
        bandwidth: bandwidth ?? _bandwidth,
        vote: vote ?? _vote,
        favorite: favorite ?? _favorite,
        nsfw: nsfw ?? _nsfw,
        section: section ?? _section,
        accountUrl: accountUrl ?? _accountUrl,
        accountId: accountId ?? _accountId,
        isAd: isAd ?? _isAd,
        inMostViral: inMostViral ?? _inMostViral,
        hasSound: hasSound ?? _hasSound,
        adType: adType ?? _adType,
        adUrl: adUrl ?? _adUrl,
        edited: edited ?? _edited,
        inGallery: inGallery ?? _inGallery,
        deletehash: deletehash ?? _deletehash,
        name: name ?? _name,
        link: link ?? _link,
      );

  String? get id => _id;

  dynamic get title => _title;

  String? get description => _description;

  int? get datetime => _datetime;

  String? get type => _type;

  bool? get animated => _animated;

  int? get width => _width;

  int? get height => _height;

  int? get size => _size;

  int? get views => _views;

  int? get bandwidth => _bandwidth;

  dynamic get vote => _vote;

  bool? get favorite => _favorite;

  dynamic get nsfw => _nsfw;

  dynamic get section => _section;

  String? get accountUrl => _accountUrl;

  int? get accountId => _accountId;

  bool? get isAd => _isAd;

  bool? get inMostViral => _inMostViral;

  bool? get hasSound => _hasSound;

  int? get adType => _adType;

  String? get adUrl => _adUrl;

  String? get edited => _edited;

  bool? get inGallery => _inGallery;

  String? get deletehash => _deletehash;

  String? get name => _name;

  String? get link => _link;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['title'] = _title;
    map['description'] = _description;
    map['datetime'] = _datetime;
    map['type'] = _type;
    map['animated'] = _animated;
    map['width'] = _width;
    map['height'] = _height;
    map['size'] = _size;
    map['views'] = _views;
    map['bandwidth'] = _bandwidth;
    map['vote'] = _vote;
    map['favorite'] = _favorite;
    map['nsfw'] = _nsfw;
    map['section'] = _section;
    map['account_url'] = _accountUrl;
    map['account_id'] = _accountId;
    map['is_ad'] = _isAd;
    map['in_most_viral'] = _inMostViral;
    map['has_sound'] = _hasSound;
    map['ad_type'] = _adType;
    map['ad_url'] = _adUrl;
    map['edited'] = _edited;
    map['in_gallery'] = _inGallery;
    map['deletehash'] = _deletehash;
    map['name'] = _name;
    map['link'] = _link;
    return map;
  }
}
