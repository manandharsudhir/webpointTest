import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';

final networkConnectionProvider =
    Provider<NetworkConnectionCheck>((ref) => NetworkConnectionCheck());

class NetworkConnectionCheck {
  final InternetConnectionChecker _internetConnectionChecker =
      InternetConnectionChecker();
  Future<bool> checkConnection() async {
    bool result = await _internetConnectionChecker.hasConnection;
    return result;
  }
}
