import 'package:epicture/models/user_connected.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final userConnectedProvider = Provider<UserConnectedProvider>((ref) => UserConnectedProvider());

class UserConnectedProvider {
  UserConnected _userConnected = UserConnected();

  void setUserConnected(UserConnected userConnected) {
    _userConnected = userConnected;
  }

  UserConnected getUserConnected() => _userConnected;
}
