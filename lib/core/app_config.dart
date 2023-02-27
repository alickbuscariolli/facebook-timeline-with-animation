class AppConfig {
  static final AppConfig _singleton = AppConfig._internal();

  factory AppConfig() {
    return _singleton;
  }

  AppConfig._internal();

  static String get imagePath => './assets/images/alick.jpg';

  static String get facebookPostText =>
      'Você conhece o Flutter Dicas Bootcamp?\nÉ um curso do Flutter feito por mim, Álick Buscariolli.\n\nSe quiser saber mais sobre ele acesse www.flutterdicas.com.br';
}
