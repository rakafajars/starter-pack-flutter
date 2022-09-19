const String DEV = 'development';
const String STAG = 'staging';
const String PROD = 'production';

enum Flavor {
  PROD,
  STAG,
  DEV,
}

class F {
  static Map<String, dynamic>? config;

  String get baseUrl => config?[Config.baseUrl];

  String get condition => config?[Config.condition];

  String get name => config?[Config.name];

  static void setEnvironment(
    Flavor env,
  ) {
    switch (env) {
      case Flavor.DEV:
        config = Config.debugConstants;

        break;
      case Flavor.STAG:
        config = Config.stagConstants;
        break;
      case Flavor.PROD:
        config = Config.prodConstants;
        break;
    }
  }
}

class Config {
  static const String name = "name";
  static const String baseUrl = "baseUrl";
  static const String condition = "condition";

  static Map<String, dynamic> debugConstants = {
    baseUrl: "",
    condition: DEV,
    name: "PayKitaz Dev"
  };
  static Map<String, dynamic> stagConstants = {
    baseUrl: "",
    condition: STAG,
    name: "PayKitaz Stag"
  };
  static Map<String, dynamic> prodConstants = {
    baseUrl: "",
    condition: PROD,
    name: "PayKitaz"
  };
}
