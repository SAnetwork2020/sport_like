/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal

import 'package:flutter/widgets.dart';

class $AssetsIconsGen {
  const $AssetsIconsGen();

  /// File path: assets/icons/back.svg
  String get back => 'assets/icons/back.svg';

  /// File path: assets/icons/basketball.svg
  String get basketball => 'assets/icons/basketball.svg';

  /// File path: assets/icons/boxing.svg
  String get boxing => 'assets/icons/boxing.svg';

  /// File path: assets/icons/check.svg
  String get check => 'assets/icons/check.svg';

  /// File path: assets/icons/cricket.svg
  String get cricket => 'assets/icons/cricket.svg';

  /// File path: assets/icons/email.svg
  String get email => 'assets/icons/email.svg';

  /// File path: assets/icons/football.svg
  String get football => 'assets/icons/football.svg';

  /// File path: assets/icons/forward.svg
  String get forward => 'assets/icons/forward.svg';

  /// File path: assets/icons/golf.svg
  String get golf => 'assets/icons/golf.svg';

  /// File path: assets/icons/horse_racing.svg
  String get horseRacing => 'assets/icons/horse_racing.svg';

  /// File path: assets/icons/ice_hockey.svg
  String get iceHockey => 'assets/icons/ice_hockey.svg';

  /// File path: assets/icons/lock.svg
  String get lock => 'assets/icons/lock.svg';

  /// File path: assets/icons/motosport.svg
  String get motosport => 'assets/icons/motosport.svg';

  /// File path: assets/icons/person.svg
  String get person => 'assets/icons/person.svg';

  /// File path: assets/icons/phone.svg
  String get phone => 'assets/icons/phone.svg';

  /// File path: assets/icons/rugby.svg
  String get rugby => 'assets/icons/rugby.svg';

  /// File path: assets/icons/shooting.svg
  String get shooting => 'assets/icons/shooting.svg';

  /// File path: assets/icons/skiing.svg
  String get skiing => 'assets/icons/skiing.svg';

  /// File path: assets/icons/tennis.svg
  String get tennis => 'assets/icons/tennis.svg';

  /// File path: assets/icons/uncheck.svg
  String get uncheck => 'assets/icons/uncheck.svg';

  /// List of all assets
  List<String> get values => [
        back,
        basketball,
        boxing,
        check,
        cricket,
        email,
        football,
        forward,
        golf,
        horseRacing,
        iceHockey,
        lock,
        motosport,
        person,
        phone,
        rugby,
        shooting,
        skiing,
        tennis,
        uncheck
      ];
}

class $AssetsImagesGen {
  const $AssetsImagesGen();

  /// File path: assets/images/bg1.png
  AssetGenImage get bg1 => const AssetGenImage('assets/images/bg1.png');

  /// File path: assets/images/bg2.png
  AssetGenImage get bg2 => const AssetGenImage('assets/images/bg2.png');

  /// File path: assets/images/logo.png
  AssetGenImage get logo => const AssetGenImage('assets/images/logo.png');

  /// List of all assets
  List<AssetGenImage> get values => [bg1, bg2, logo];
}

class Assets {
  Assets._();

  static const $AssetsIconsGen icons = $AssetsIconsGen();
  static const $AssetsImagesGen images = $AssetsImagesGen();
}

class AssetGenImage {
  const AssetGenImage(this._assetName);

  final String _assetName;

  Image image({
    Key? key,
    AssetBundle? bundle,
    ImageFrameBuilder? frameBuilder,
    ImageErrorWidgetBuilder? errorBuilder,
    String? semanticLabel,
    bool excludeFromSemantics = false,
    double? scale,
    double? width,
    double? height,
    Color? color,
    Animation<double>? opacity,
    BlendMode? colorBlendMode,
    BoxFit? fit,
    AlignmentGeometry alignment = Alignment.center,
    ImageRepeat repeat = ImageRepeat.noRepeat,
    Rect? centerSlice,
    bool matchTextDirection = false,
    bool gaplessPlayback = false,
    bool isAntiAlias = false,
    String? package,
    FilterQuality filterQuality = FilterQuality.low,
    int? cacheWidth,
    int? cacheHeight,
  }) {
    return Image.asset(
      _assetName,
      key: key,
      bundle: bundle,
      frameBuilder: frameBuilder,
      errorBuilder: errorBuilder,
      semanticLabel: semanticLabel,
      excludeFromSemantics: excludeFromSemantics,
      scale: scale,
      width: width,
      height: height,
      color: color,
      opacity: opacity,
      colorBlendMode: colorBlendMode,
      fit: fit,
      alignment: alignment,
      repeat: repeat,
      centerSlice: centerSlice,
      matchTextDirection: matchTextDirection,
      gaplessPlayback: gaplessPlayback,
      isAntiAlias: isAntiAlias,
      package: package,
      filterQuality: filterQuality,
      cacheWidth: cacheWidth,
      cacheHeight: cacheHeight,
    );
  }

  ImageProvider provider() => AssetImage(_assetName);

  String get path => _assetName;

  String get keyName => _assetName;
}
