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

  group('Register Account Integration Tests', () {
    testWidgets('Register Account Test - Success', (WidgetTester tester) async {
      _overrideOnError();

      await tester.pumpWidget(ChangeNotifierProvider(
        create: (context) => FFAppState(),
        child: MyApp(),
      ));

      await tester.pumpAndSettle();

      // Navigate to the Register Account page
      await tester.tap(find.byKey(ValueKey('btnRegister')));
      await tester.pumpAndSettle();

      // Fill in registration form with valid data
      await tester.enterText(find.byKey(ValueKey('txtName')), 'Nguyen Duy');
      await tester.enterText(
          find.byKey(ValueKey('txtPhonenumberRegis')), '0799699159');
      await tester.enterText(
          find.byKey(ValueKey('txtEmail')), 'duy@example.com');
      await tester.enterText(find.byKey(ValueKey('txtCCCD')), '123456789012');
      await tester.enterText(find.byKey(ValueKey('txtPasswordRegis')), '12345');
      await tester.enterText(
          find.byKey(ValueKey('txtConfimPassRegis')), '12345');

      // Tap the register button
      await tester.tap(find.byKey(ValueKey('btnRegisterSubmit')));
      await tester.pumpAndSettle();

      // Check if registration was successful (change the expected text based on your app's flow)
      expect(find.text('Bạn chưa có tài khoản'), findsOneWidget);
    });

    testWidgets('Register Account Test - Failure (Invalid Phone Number)',
        (WidgetTester tester) async {
      _overrideOnError();

      await tester.pumpWidget(ChangeNotifierProvider(
        create: (context) => FFAppState(),
        child: MyApp(),
      ));

      await tester.pumpAndSettle();

      // Navigate to the Register Account page
      await tester.tap(find.byKey(ValueKey('btnRegister')));
      await tester.pumpAndSettle();

      // Fill in registration form with invalid phone number
      await tester.enterText(find.byKey(ValueKey('txtName')), 'Nguyen Duy');
      await tester.enterText(
          find.byKey(ValueKey('txtPhonenumberRegis')), '12345');
      await tester.enterText(
          find.byKey(ValueKey('txtEmail')), 'duy@example.com');
      await tester.enterText(find.byKey(ValueKey('txtCCCD')), '123456789012');
      await tester.enterText(find.byKey(ValueKey('txtPasswordRegis')), '12345');
      await tester.enterText(
          find.byKey(ValueKey('txtConfimPassRegis')), '12345');

      // Tap the register button
      await tester.tap(find.byKey(ValueKey('btnRegisterSubmit')));
      await tester.pumpAndSettle();

      // Check if the error message for invalid phone number is shown
      expect(find.text('Số điện thoại phải đúng 10 chữ số!'), findsOneWidget);
    });

    testWidgets('Register Account Test - Failure (Passwords Do Not Match)',
        (WidgetTester tester) async {
      _overrideOnError();

      await tester.pumpWidget(ChangeNotifierProvider(
        create: (context) => FFAppState(),
        child: MyApp(),
      ));

      await tester.pumpAndSettle();

      // Navigate to the Register Account page
      await tester.tap(find.byKey(ValueKey('btnRegister')));
      await tester.pumpAndSettle();

      // Fill in registration form with mismatched passwords
      await tester.enterText(find.byKey(ValueKey('txtName')), 'Nguyen Duy');
      await tester.enterText(
          find.byKey(ValueKey('txtPhonenumberRegis')), '0799699159');
      await tester.enterText(
          find.byKey(ValueKey('txtEmail')), 'duy@example.com');
      await tester.enterText(find.byKey(ValueKey('txtCCCD')), '123456789012');
      await tester.enterText(find.byKey(ValueKey('txtPasswordRegis')), '12345');
      await tester.enterText(
          find.byKey(ValueKey('txtConfimPassRegis')), '54321');

      // Tap the register button
      await tester.tap(find.byKey(ValueKey('btnRegisterSubmit')));
      await tester.pumpAndSettle();

      // Check if the error message for mismatched passwords is shown
      expect(find.text('Mật khẩu không khớp!'), findsOneWidget);
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
