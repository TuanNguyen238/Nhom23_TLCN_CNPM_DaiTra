import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:provider/provider.dart';
import 'package:admin_doctor_medicare/flutter_flow/flutter_flow_util.dart';
import 'package:admin_doctor_medicare/main.dart';

void main() {
  testWidgets('CreateRecordTest', (WidgetTester tester) async {
    await tester.pumpWidget(ChangeNotifierProvider(
      create: (context) => FFAppState(),
      child: MyApp(
        entryPage: MedicalRecordsWidget(),
      ),
    ));

    await tester.pumpAndSettle(Duration(milliseconds: 3000));
    await tester.tap(find.byKey(ValueKey('Button_nzse')));
    await tester.pumpAndSettle(Duration(milliseconds: 3000));
    expect(find.byKey(ValueKey('btottomContent_8u84')), findsOneWidget);
    await tester.enterText(find.byKey(ValueKey('height_l4g6')), '170');
    await tester.enterText(find.byKey(ValueKey('weght_mp8c')), '90');
    await tester.enterText(find.byKey('heartBeat_9tiq')), '90');
    await tester.enterText(find.byKey('breathingRhym_zm4p')), '90');
    await tester.enterText(find.byKey('bloodPressure_pae7')), '140');
    await tester.enterText(find.byKey('bloodPressure_xnrx')), '90');
    await tester.enterText(find.byKey('AddRecord_js4i')), '90');
    await tester.enterText(
        find.byKey('diagnosis_g7zi')), 'Tim hở van');
    await tester.enterText(find.byKey('examination_bkd4')),
        'Cần tái khám để theo dõi tình hình');
    await tester.enterText(
        find.byKey('paraclinicaImaging_uvfv')), 'Tim hở van');
    await tester.tap(find.byKey('medicineDropdown_q260'));
    await tester.enterText(
        find.byKey('note_h613')), 'Uống liều lượng cho 3 ngày');
    await tester.enterText(find.byKey('morning_ms0n')), '2');
    await tester.enterText(find.byKey('afternoon_67dw')), '2');
    await tester.enterText(find.byKey('evening_yycy')), '1');
    await tester.enterText(find.byKey('day_4m6t')), '3');
    await tester.tap(find.byKey('Button_77eq'));
    await tester.tap(find.byKey('Button_l4a6'));
    await tester.pumpAndSettle(Duration(milliseconds: 3000));
    expect(find.byKey(ValueKey('PaginatedDataTable_la31')), findsOneWidget);
  });
}
