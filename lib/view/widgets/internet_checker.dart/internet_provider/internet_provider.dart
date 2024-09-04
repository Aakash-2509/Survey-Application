import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'dart:async';

// Define the different states
enum ConnectivityStatus { initial, gained, lost }

// Define a state notifier to manage connectivity state
class ConnectivityNotifier extends StateNotifier<ConnectivityStatus> {
  ConnectivityNotifier() : super(ConnectivityStatus.initial) {
    _connectivity = Connectivity();
    _connectivitySubscription =
        _connectivity.onConnectivityChanged.listen((result) async {
      if (result.contains(ConnectivityResult.mobile) ||
          result.contains(ConnectivityResult.wifi)) {
        //  await Future.delayed(const Duration(milliseconds: 1000), () {});
        state = ConnectivityStatus.gained;
      } else {
        // await Future.delayed(const Duration(milliseconds: 1000), () {});
        state = ConnectivityStatus.lost;
      }
    });
  }

  late Connectivity _connectivity;
  StreamSubscription? _connectivitySubscription;

  @override
  void dispose() {
    _connectivitySubscription?.cancel();
    super.dispose();
  }
}

// Create a provider for the connectivity notifier
final connectivityProvider =
    StateNotifierProvider<ConnectivityNotifier, ConnectivityStatus>((ref) {
  return ConnectivityNotifier();
});
