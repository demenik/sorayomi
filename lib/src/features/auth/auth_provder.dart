import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:local_auth/local_auth.dart';

final authProvider = StateProvider.autoDispose<bool>((ref) => false);

LocalAuthentication auth = LocalAuthentication();

Future<bool> authenticate() async {
  try {
    final bool didAuthenticate =
        await auth.authenticate(localizedReason: "Unlock category");
    return didAuthenticate;
  } catch (e) {
    rethrow;
  }
}

Future<bool> get canAuthenticate async {
  return await auth.canCheckBiometrics || await auth.isDeviceSupported();
}
