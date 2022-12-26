import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'authentication_repository.dart';

final authRepoProvider = Provider<AuthenticationRepository>(
  (_) => AuthenticationRepository(),
);
