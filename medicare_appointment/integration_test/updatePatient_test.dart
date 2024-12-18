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

  group('Edit Patient Info Integration Tests', () {
    testWidgets('Update Info - Success', (WidgetTester tester) async {
      await tester.pumpWidget(ChangeNotifierProvider(
        create: (context) => FFAppState(),
        child: MyApp(),
      ));

      await tester.pumpAndSettle();

      await tester.tap(find.byKey(ValueKey('btnEditPatientInfo')));
      await tester.pumpAndSettle();

      await tester.enterText(
        find.byKey(ValueKey('txtName')),
        'Nguyễn Văn A',
      );
      await tester.enterText(
        find.byKey(ValueKey('txtSDT')),
        '0912345678',
      );
      await tester.enterText(
        find.byKey(ValueKey('txtCCCD')),
        '123456789012',
      );
      await tester.enterText(
        find.byKey(ValueKey('txtDiachi')),
        '123 Đường ABC, TP.HCM',
      );
      await tester.enterText(
        find.byKey(ValueKey('txtTenNthan')),
        'Nguyễn Thị B',
      );
      await tester.enterText(
        find.byKey(ValueKey('txtDiaChiNthan')),
        '456 Đường XYZ, TP.HCM',
      );
      await tester.enterText(
        find.byKey(ValueKey('txtSDTNthan')),
        '0987654321',
      );

      await tester.tap(find.byKey(ValueKey('btnSaveChanges')));
      await tester.pumpAndSettle();

      expect(find.text('Thông tin đã được cập nhật'), findsOneWidget);
    });

    testWidgets('Update Info - Invalid Phone Number',
        (WidgetTester tester) async {
      await tester.pumpWidget(ChangeNotifierProvider(
        create: (context) => FFAppState(),
        child: MyApp(),
      ));

      await tester.pumpAndSettle();

      await tester.tap(find.byKey(ValueKey('btnEditPatientInfo')));
      await tester.pumpAndSettle();

      await tester.enterText(
        find.byKey(ValueKey('txtName')),
        'Nguyễn Văn A',
      );
      await tester.enterText(
        find.byKey(ValueKey('txtSDT')),
        '0912345',
      );

      await tester.tap(find.byKey(ValueKey('btnSaveChanges')));
      await tester.pumpAndSettle();

      expect(find.text('Số điện thoại phải có 10 chữ số'), findsOneWidget);
    });
  });
}
