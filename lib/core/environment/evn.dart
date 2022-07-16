enum Environment { development, staging, qa, production }

class Env {
  // Env();
  static Environment environment = Environment.staging;
  static const String staging =
      'https://storage.googleapis.com/ember-deploy.appspot.com/images/open-source.json';
  static const String live = "";

  static final coreBaseUrl =
      environment == Environment.production ? live : staging;
}
