import 'package:connectivity_plus/connectivity_plus.dart';

class NetworkService {
  final Connectivity _connectivity = Connectivity();
  bool isConnected = false;

  init() {
    _connectivity.onConnectivityChanged.listen(_updateConnectionStatus);
  }

  void _updateConnectionStatus(ConnectivityResult connectivityResult) {
    if (connectivityResult != ConnectivityResult.none && isConnected == false) {
      isConnected = true;
      // TODO: PUSH BACK
    } else if (connectivityResult == ConnectivityResult.none && isConnected == true) {
      isConnected = false;
      // TODO: PUSH TO NO INTERNET SCREEN
    }
  }
}
