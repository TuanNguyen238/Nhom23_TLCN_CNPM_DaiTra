import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:medicare_appointment/backend/schema/index.dart';
import 'package:medicare_appointment/flutter_flow/flutter_flow_util.dart';
import 'package:medicare_appointment/main.dart';
import 'package:medicare_appointment/pages/main_pages/book_examination/book_examination_model.dart';
import 'package:provider/provider.dart';
import 'package:medicare_appointment/backend/firebase/firebase_config.dart';
import 'package:medicare_appointment/auth/custom_auth/auth_util.dart';

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  late List<RecordStruct> listRecords;
  setUpAll(() async {
    listRecords = [];
  });

  setUp(() async {
    expect(listRecords, isEmpty);
  });

  group('Get list Integration Test', () {
    testWidgets('Get - Success', (WidgetTester tester) async {
      await tester.pumpWidget(
        ChangeNotifierProvider(
          create: (context) => FFAppState(),
          child: MyApp(),
        ),
      );
      PatientStruct mockPatient = PatientStruct(
        id: 'patient123',
        fullName: 'Nguyen Van A',
        address: '123 Đường ABC, Hà Nội',
      );

      ExamRoomStruct mockExamRoom = ExamRoomStruct(
        id: 'room001',
        roomNumber: 101,
      );

      RecordStruct mockRecord = RecordStruct(
        id: 'record001',
        recordCode: 'RC-123456',
        reasonForVisit: 'Khám sức khỏe định kỳ',
        diagnosis: 'Không có bệnh lý nghiêm trọng',
        examResult: 'Ổn định',
        paid: true,
        patient: mockPatient,
        examRoom: mockExamRoom,
        status: 'Đã khám',
        timeUntilAppointment: '0 phút',
        orderNumber: 1,
      );
      PatientStruct mockPatient2 = PatientStruct(
        id: 'patient123',
        fullName: 'Nguyen Van A',
        address: '123 Đường ABC, Hà Nội',
      );

      ExamRoomStruct mockExamRoom2 = ExamRoomStruct(
        id: 'room001',
        roomNumber: 101,
      );

      RecordStruct mockRecord2 = RecordStruct(
        id: 'record002',
        recordCode: 'RC-123456',
        reasonForVisit: 'Khám sức khỏe định kỳ',
        diagnosis: 'Không có bệnh lý nghiêm trọng',
        examResult: 'Ổn định',
        paid: true,
        patient: mockPatient,
        examRoom: mockExamRoom,
        status: 'Đã khám',
        timeUntilAppointment: '0 phút',
        orderNumber: 1,
      );

      listRecords.add(mockRecord);
      listRecords.add(mockRecord2);

      expect(listRecords, hasLength(2));
      expect(listRecords[0].id, 'record00');
      expect(listRecords[1].id, 'record001');
    });
  });
}
