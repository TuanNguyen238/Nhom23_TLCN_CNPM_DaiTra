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

  group('Create Patient Integration Test', () {
    testWidgets('Create New Patient - Success', (WidgetTester tester) async {
      await tester.pumpWidget(
        ChangeNotifierProvider(
          create: (context) => FFAppState(),
          child: MyApp(),
        ),
      );

      await tester.pumpAndSettle();

      await tester.enterText(
          find.byKey(ValueKey('txtName_jiu6')), 'Nguyen Thi A');
      await tester.enterText(find.byKey(ValueKey('txtSDT_jiu6')), '0799699159');
      await tester.enterText(
          find.byKey(ValueKey('txtCCCD_jiu6')), '123456789012');
      await tester.enterText(
          find.byKey(ValueKey('txtDiachi_jiu6')), '123 Đường ABC');
      await tester.enterText(
          find.byKey(ValueKey('txtTenNthan_jiu6')), 'Nguyen Thi B');
      await tester.enterText(
          find.byKey(ValueKey('txtDiaChiNthan_jiu6')), '456 Đường XYZ');
      await tester.enterText(
          find.byKey(ValueKey('txtSDTNthan_jiu6')), '0789456123');

      await tester.tap(find.byKey(ValueKey('dropDownQHNthan_jiu6')));
      await tester.pumpAndSettle();
      await tester.tap(find.text('Hà Nội').last);
      await tester.pumpAndSettle();

      await tester.tap(find.byKey(ValueKey('dropDownQHNthan_jiu6')));
      await tester.pumpAndSettle();
      await tester.tap(find.text('Lê Đại Hành').last);
      await tester.pumpAndSettle();

      await tester.tap(find.byKey(ValueKey('dropDownQHNthan_jiu6')));
      await tester.pumpAndSettle();
      await tester.tap(find.text('Hai Bà Trưng').last);
      await tester.pumpAndSettle();

      await tester.tap(find.byKey(ValueKey('datePicker_jiu6')));
      await tester.pumpAndSettle();
      await tester.tap(find.text('15').last);
      await tester.pumpAndSettle();

      await tester.tap(find.byKey(ValueKey('btnSave_jiu6')));
      await tester.pumpAndSettle();

      expect(find.text('Bệnh nhân đã được tạo thành công!'), findsOneWidget);
    });

    testWidgets('Create New Patient - Validation Failure',
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
      await tester.enterText(find.byKey(ValueKey('txtSDT_jiu6')), '07996991');
      await tester.enterText(
          find.byKey(ValueKey('txtCCCD_jiu6')), '123456789012');
      await tester.enterText(
          find.byKey(ValueKey('txtDiachi_jiu6')), '123 Đường ABC');
      await tester.enterText(
          find.byKey(ValueKey('txtTenNthan_jiu6')), 'Nguyen Thi B');
      await tester.enterText(
          find.byKey(ValueKey('txtDiaChiNthan_jiu6')), '456 Đường XYZ');
      await tester.enterText(
          find.byKey(ValueKey('txtSDTNthan_jiu6')), '0789456123');

      await tester.tap(find.byKey(ValueKey('dropDownQHNthan_jiu6')));
      await tester.pumpAndSettle();
      await tester.tap(find.text('Hà Nội').last);
      await tester.pumpAndSettle();

      await tester.tap(find.byKey(ValueKey('datePicker_jiu6')));
      await tester.pumpAndSettle();
      await tester.tap(find.text('15').last);
      await tester.pumpAndSettle();

      await tester.tap(find.byKey(ValueKey('btnSave_jiu6')));
      await tester.pumpAndSettle();

      expect(find.text('Số điện thoại phải có 10 chữ số!'), findsOneWidget);
    });
  });
}
