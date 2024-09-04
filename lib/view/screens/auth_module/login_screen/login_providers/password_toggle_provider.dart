import 'package:flutter_riverpod/flutter_riverpod.dart';

class PasswordToggle extends StateNotifier<bool> {
  PasswordToggle() : super(true);

  void togglePassword() {
    state = !state;
  }
}

class IsLoading extends StateNotifier<bool> {
  IsLoading() : super(false);

  void isLoadingToggle() {
    state = !state;
  }
}

final passwordToggleProvider =
    StateNotifierProvider<PasswordToggle, bool>((ref) => PasswordToggle());

final isLoginLoadingProvider =
    StateNotifierProvider<IsLoading, bool>((ref) => IsLoading());
