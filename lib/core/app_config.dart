class AppConfig {
  static final AppConfig _singleton = AppConfig._internal();

  factory AppConfig() {
    return _singleton;
  }

  AppConfig._internal();

  static String get imagePath => './assets/images/alick.jpg';

  static String get facebookPortuguesePostText =>
      'Você conhece o Flutter Dicas Bootcamp?\nÉ um curso do Flutter feito por mim, Álick Buscariolli.\n\nSe quiser saber mais sobre ele acesse www.flutterdicas.com.br';

  static String get facebookEnglishPostText =>
      'After some time of utilizing Facebook, I observed a relatively new animation for the initial card to add a story. Each time I encountered this animation, I felt compelled to recreate it in Flutter. Today marks the realization of this aspiration, and I am pleased to present the resulting product to you.\n\nI hope you like it!';
}
