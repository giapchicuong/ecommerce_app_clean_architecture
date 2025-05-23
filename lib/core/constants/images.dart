class AppImages {
  static String get baseAssets => 'assets/images/';
  static String defaultExtension = 'svg';

  static String get appleLogo => _getUrlImage(name: 'apple_logo');
  static String get facebookLogo => _getUrlImage(name: 'facebook_logo');
  static String get googleLogo => _getUrlImage(name: 'google_logo');
  static String get getStatedBanner =>
      _getUrlImage(name: 'get_started_banner', extension: 'png');
  static String get logo => _getUrlImage(name: 'logo');
  static String get onBoarding1 => _getUrlImage(name: 'on_boarding1');
  static String get onBoarding2 => _getUrlImage(name: 'on_boarding2');
  static String get onBoarding3 => _getUrlImage(name: 'on_boarding3');

  static String _getUrlImage({
    required String name,
    String? customBase,
    String? extension,
  }) {
    final base = customBase ?? baseAssets;
    final ext = extension ?? defaultExtension;
    return '$base$name.$ext';
  }
}
