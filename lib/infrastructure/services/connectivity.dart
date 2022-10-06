

import 'package:connectivity_plus/connectivity_plus.dart';

class ConnectivityX {
  static Future<ConnectivityResult> get create async {
    final connectivity = Connectivity();

    return await connectivity.checkConnectivity();
  }
}
