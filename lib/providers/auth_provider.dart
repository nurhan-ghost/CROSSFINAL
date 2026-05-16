import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../data/services/auth_services.dart';

final authServiceProvider =
    Provider<AuthService>((ref) {
  return AuthService();
});