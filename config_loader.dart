library config_loader;

import 'package:dart_config/default_server.dart' as Config;
import 'dart:async';

class ConfigLoader {
  Future<Map> loadConfig() {
    return Config.loadConfig().then((config) {
      assert(config["listeningPort"] != null);
      assert(config["gitWorkingDir"] != null);
      assert(config["clientPath"] != null);
      assert(config["websitePath"] != null);
      assert(config["serverPath"] != null);
      assert(config["serverFileName"] != null);
      assert(config["gitTarget"] != null);
      assert(config["clientHostname"] != null);
      print("Loaded config successfully");
      return config;
    });
  }
}
