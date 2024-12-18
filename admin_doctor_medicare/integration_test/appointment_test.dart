import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:provider/provider.dart';
import 'package:admin_doctor_medicare/flutter_flow/flutter_flow_util.dart';
import 'package:admin_doctor_medicare/main.dart';

void main() {
  testWidgets('AppointmentTest', (WidgetTester tester) async {
    await tester.pumpWidget(ChangeNotifierProvider(
      create: (context) => FFAppState(),
      child: MyApp(
        entryPage: AppointmentWidget(),
      ),
    ));

    await tester.pumpAndSettle(Duration(milliseconds: 3000));
    await tester.tap(find.byKey(ValueKey('IconButton_r3az')));
    await tester.pumpAndSettle(Duration(milliseconds: 3000));
    expect(find.byKey(ValueKey('PaginatedDataTable_29qg')), findsOneWidget);
  });
}
