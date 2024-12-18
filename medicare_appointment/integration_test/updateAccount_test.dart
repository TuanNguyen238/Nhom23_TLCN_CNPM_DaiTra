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

  setUpAll(() async {});

  setUp(() async {});

  group('Update Account Integration Test', () {
    testWidgets('Update Account - Success', (WidgetTester tester) async {
      await tester.pumpWidget(
        ChangeNotifierProvider(
          create: (context) => FFAppState(),
          child: MyApp(),
        ),
      );

      await tester.pumpAndSettle();

      await tester.enterText(
          find.byKey(ValueKey('txtName_jiu6')), 'Nguyen Thi A');
      await tester.enterText(
          find.byKey(ValueKey('txtCCCD_jiu6')), '123456789012');
      await tester.enterText(
          find.byKey(ValueKey('txtEmail_jiu6')), 'nguyenthia@gmail.com');

      await tester.tap(find.byKey(ValueKey('btnSave_jiu6')));
      await tester.pumpAndSettle();

      expect(
          find.text('Thông tin đã được cập nhật thành công!'), findsOneWidget);
    });

    testWidgets('Update Account - Validation Failure',
        (WidgetTester tester) async {
      await tester.pumpWidget(
        ChangeNotifierProvider(
          create: (context) => FFAppState(),
          child: MyApp(),
        ),
      );

      await tester.pumpAndSettle();

      await tester.enterText(
          find.byKey(ValueKey('txtName_jiu6')), 'Nguyen Thi A');
      await tester.enterText(
          find.byKey(ValueKey('txtCCCD_jiu6')), '123456789012');
      await tester.enterText(
          find.byKey(ValueKey('txtEmail_jiu6')), 'nguyenthia.com');

      await tester.tap(find.byKey(ValueKey('btnSave_jiu6')));
      await tester.pumpAndSettle();

      expect(find.text('Email không hợp lệ!'), findsOneWidget);
    });
  });
}
