import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:provider/provider.dart';
import 'package:admin_doctor_medicare/flutter_flow/flutter_flow_util.dart';
import 'package:admin_doctor_medicare/main.dart';

void main() {
  testWidgets('UserListTest', (WidgetTester tester) async {
    await tester.pumpWidget(ChangeNotifierProvider(
      create: (context) => FFAppState(),
      child: MyApp(
        entryPage: UserListWidget(),
      ),
    ));

    await tester.pumpAndSettle(Duration(milliseconds: 3000));
    await tester.tap(find.descendant(
      of: find.byKey(ValueKey('DataTableUser_mb39')),
      matching: find.byKey(ValueKey('RowActionUser_rg0s')),
    ));
    await tester.pumpAndSettle(Duration(milliseconds: 3000));
    expect(find.byKey(ValueKey('DataTableUser_mb39')), findsOneWidget);
  });
}
