
import 'dart:async';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:serverpod_auth_shared_flutter/serverpod_auth_shared_flutter.dart';
import 'package:serverpod_auth_client/serverpod_auth_client.dart';
import 'serverpod_client_provider.dart';

part 'session_manager_provider.g.dart';

@riverpod
SessionManager sessionManager(Ref ref) {
  ref.keepAlive();
  final client = ref.watch(serverpodClientProvider);
  final sessionManager = SessionManager(
    caller: client.modules.auth,
  );
  sessionManager.initialize();
  return sessionManager;
}

@riverpod
Stream<UserInfo?> userInfoStream(Ref ref) {
  final sessionManager = ref.watch(sessionManagerProvider);
  late StreamController<UserInfo?> controller;
  
  void listener() {
    if (!controller.isClosed) {
      controller.add(sessionManager.signedInUser);
    } 
  }
           
  controller = StreamController<UserInfo?>(
    onListen: () {
      // Отправляем текущее состояние сразу
      controller.add(sessionManager.signedInUser);
      // Подписываемся на изменения
      sessionManager.addListener(listener);
    },
    onCancel: () {
      sessionManager.removeListener(listener);
    },
  );
  
  ref.onDispose(() {
    sessionManager.removeListener(listener);
    controller.close();
  });
  
  return controller.stream;
}

@riverpod
UserInfo? currentUser(Ref ref) {
  final asyncUserInfo = ref.watch(userInfoStreamProvider);
  return asyncUserInfo.valueOrNull;
}

@riverpod
bool isAuthenticated(Ref ref) {
  final user = ref.watch(currentUserProvider);
  return user != null;
}
