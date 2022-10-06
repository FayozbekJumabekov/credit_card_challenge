import 'package:connectivity_plus/connectivity_plus.dart';

extension Connectivity on ConnectivityResult {
  bool get hasNetworkConnection => this != ConnectivityResult.none;
}
