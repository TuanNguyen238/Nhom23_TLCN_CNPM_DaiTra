import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:medicare_appointment/backend/api_requests/api_calls.dart';
import 'package:medicare_appointment/backend/schema/index.dart';
import 'package:medicare_appointment/flutter_flow/flutter_flow_util.dart';
import 'package:medicare_appointment/main.dart';
import 'package:medicare_appointment/pages/main_pages/book_examination/book_examination_model.dart';
import 'package:provider/provider.dart';
import 'package:medicare_appointment/backend/firebase/firebase_config.dart';
import 'package:medicare_appointment/auth/custom_auth/auth_util.dart';
import 'package:webviewx_plus/webviewx_plus.dart';

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  setUpAll(() async {});

  setUp(() async {});

  group('Chat Integration Test', () {
    testWidgets('chat - Success', (WidgetTester tester) async {
      await tester.pumpWidget(
        ChangeNotifierProvider(
          create: (context) => FFAppState(),
          child: MyApp(),
        ),
      );
      expect(ApiCallResponse, 'Hi!');
    });

    testWidgets('address - Success', (WidgetTester tester) async {
      await tester.pumpWidget(
        ChangeNotifierProvider(
          create: (context) => FFAppState(),
          child: MyApp(),
        ),
      );
    });
    const double latitude = 10.762622;
    const double longitude = 106.660172;
    final googleMapsUrl =
        'https://www.google.com/maps/search/?api=1&query=$latitude,$longitude';
    when(mockUrlLauncher.canLaunch(googleMapsUrl))
        .thenAnswer((_) async => false);
    expect(() => MapUtils.openMap(latitude, longitude), throwsA(isA<String>()));
  });
}
