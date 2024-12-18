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

  group('Forgot Password - New Password Integration Tests', () {
    testWidgets('Update Password - Success', (WidgetTester tester) async {
      await tester.pumpWidget(ChangeNotifierProvider(
        create: (context) => FFAppState(),
        child: MyApp(),
      ));

      await tester.pumpAndSettle();

      await tester.tap(find.byKey(ValueKey('btnForgotPasswordOTP')));
      await tester.pumpAndSettle();

      await tester.enterText(
        find.byKey(ValueKey('txtUpdatePass')),
        'newpassword123',
      );
      await tester.enterText(
        find.byKey(ValueKey('txtConfimUpdatePass')),
        'newpassword123',
      );

      await tester.tap(find.byKey(ValueKey('btnUpdatePassword')));
      await tester.pumpAndSettle();

      expect(find.text('Mật khẩu đã được cập nhật thành công'), findsOneWidget);
    });

    testWidgets('Update Password - Passwords do not match',
        (WidgetTester tester) async {
      await tester.pumpWidget(ChangeNotifierProvider(
        create: (context) => FFAppState(),
        child: MyApp(),
      ));

      await tester.pumpAndSettle();

      await tester.tap(find.byKey(ValueKey('btnForgotPasswordOTP')));
      await tester.pumpAndSettle();

      await tester.enterText(
        find.byKey(ValueKey('txtUpdatePass')),
        'newpassword123',
      );
      await tester.enterText(
        find.byKey(ValueKey('txtConfimUpdatePass')),
        'wrongpassword123',
      );

      await tester.tap(find.byKey(ValueKey('btnUpdatePassword')));
      await tester.pumpAndSettle();

      expect(find.text('Mật khẩu xác nhận không khớp'), findsOneWidget);
    });
  });
}
