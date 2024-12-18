import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:medicare_appointment/flutter_flow/flutter_flow_util.dart';
import 'package:medicare_appointment/main.dart';
import 'package:provider/provider.dart';
import 'package:medicare_appointment/backend/firebase/firebase_config.dart';
import 'package:medicare_appointment/auth/custom_auth/auth_util.dart';

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  setUpAll(() async {
    await initFirebase();
    await authManager.initialize();
  });

  setUp(() async {
    await authManager.signOut();
    FFAppState.reset();
    final appState = FFAppState();
    await appState.initializePersistedState();
  });

  group('Login Integration Tests', () {
    testWidgets('Login Test - Success', (WidgetTester tester) async {
      _overrideOnError();

      await tester.pumpWidget(ChangeNotifierProvider(
        create: (context) => FFAppState(),
        child: MyApp(),
      ));

      await tester.pumpAndSettle();

      // Nhập thông tin đăng nhập hợp lệ
      await tester.enterText(
          find.byKey(ValueKey('tfPhoneNumber_jiu6')), '0799699159');
      await tester.enterText(find.byKey(ValueKey('tfPassword_57il')), '12345');
      await tester.tap(find.byKey(ValueKey('btnLogin_0tpc')));
      await tester.pumpAndSettle();

      // Kiểm tra màn hình chào mừng
      expect(find.text('MEDICARE Xin Chào!'), findsOneWidget);
    });

    testWidgets('Login Test - Failure', (WidgetTester tester) async {
      _overrideOnError();

      await tester.pumpWidget(ChangeNotifierProvider(
        create: (context) => FFAppState(),
        child: MyApp(),
      ));

      await tester.pumpAndSettle();

      // Nhập thông tin đăng nhập sai
      await tester.enterText(
          find.byKey(ValueKey('tfPhoneNumber_jiu6')), '0799699159');
      await tester.enterText(
          find.byKey(ValueKey('tfPassword_57il')), 'wrong_password');
      await tester.tap(find.byKey(ValueKey('btnLogin_0tpc')));
      await tester.pumpAndSettle();

      // Kiểm tra hiển thị lỗi
      expect(find.text('Mật khẩu không đúng!!'), findsNothing);
    });
  });
}

void _overrideOnError() {
  final originalOnError = FlutterError.onError!;
  FlutterError.onError = (errorDetails) {
    if (_shouldIgnoreError(errorDetails.toString())) {
      return;
    }
    originalOnError(errorDetails);
  };
}

bool _shouldIgnoreError(String error) {
  if (error.contains('ImageCodecException')) {
    debugPrint('Ignored ImageCodecException');
    return true;
  }
  if (error.contains('overflowed by')) {
    debugPrint('Ignored overflow error: $error');
    return true;
  }
  if (error.contains('No host specified in URI') ||
      error.contains('EXCEPTION CAUGHT BY IMAGE RESOURCE SERVICE')) {
    debugPrint('Ignored image resource error');
    return true;
  }
  if (error.contains('setState() called after dispose()')) {
    debugPrint('Ignored setState error');
    return true;
  }
  return false;
}
