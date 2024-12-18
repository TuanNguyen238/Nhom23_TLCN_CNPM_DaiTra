import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:medicare_appointment/flutter_flow/flutter_flow_util.dart';
import 'package:medicare_appointment/main.dart';
import 'package:provider/provider.dart';
import 'package:medicare_appointment/backend/firebase/firebase_config.dart';
import 'package:medicare_appointment/auth/custom_auth/auth_util.dart';
import 'package:medicare_appointment/pages/main_pages/info_book_appointment/info_book_appointment_model.dart';
import 'package:medicare_appointment/pages/main_pages/info_book_appointment/info_book_appointment_widget.dart';

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

  group('Book Examination Integration Tests', () {
    testWidgets('Book Examination - Success', (WidgetTester tester) async {
      final model = InfoBookAppointmentModel();
      await tester.pumpWidget(
        MaterialApp(
          home: Provider<InfoBookAppointmentModel>(
            create: (_) => model,
            child: const Scaffold(),
          ),
        ),
      );

      await tester.enterText(find.byKey(ValueKey('txtLyDo')), 'Khám tổng quát');
      await tester.enterText(
          find.byKey(ValueKey('txtDiaChi')), '123 Đường ABC, TP.HCM');

      final chip = find.byWidgetPredicate(
        (widget) =>
            widget is ChoiceChip && widget.label == Text('Khám tổng quát'),
      );
      await tester.tap(chip);
      await tester.pump();

      model.addToLstDate('2024-12-18');
      await tester.pump();

      await tester.tap(find.byKey(ValueKey('btnSubmit')));
      await tester.pump();

      expect(find.text('Đặt lịch thành công'), findsOneWidget);
    });

    testWidgets('Book Examination - Fail (Missing Reason or Date)',
        (WidgetTester tester) async {
      final model = InfoBookAppointmentModel();
      await tester.pumpWidget(
        MaterialApp(
          home: Provider<InfoBookAppointmentModel>(
            create: (_) => model,
            child: Scaffold(),
          ),
        ),
      );

      await tester.enterText(find.byKey(ValueKey('txtLyDo')), '');

      model.lstDate.clear();
      await tester.pump();

      await tester.tap(find.byKey(ValueKey('btnSubmit')));
      await tester.pump();

      expect(
          find.text('Vui lòng nhập lý do và chọn ngày khám!'), findsOneWidget);
    });
  });
}
