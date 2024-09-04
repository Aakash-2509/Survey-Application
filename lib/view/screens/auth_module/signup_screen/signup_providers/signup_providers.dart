import 'package:flutter_riverpod/flutter_riverpod.dart';

class SignupProviders extends StateNotifier<bool> {
  SignupProviders() : super(true);

  void togglePassword() {
    state = !state;
  }
}

class IsSignupLoading extends StateNotifier<bool> {
  IsSignupLoading() : super(false);

  void isLoadingToggle() {
    state = !state;
  }
}

final passwordToggleSignupProvider =
    StateNotifierProvider<SignupProviders, bool>((ref) => SignupProviders());

final isLoginLoadingSignupProvider =
    StateNotifierProvider<IsSignupLoading, bool>((ref) => IsSignupLoading());
