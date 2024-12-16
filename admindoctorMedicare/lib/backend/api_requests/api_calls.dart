import 'dart:convert';

import 'package:flutter/foundation.dart';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

class LoginwebAPICall {
  static Future<ApiCallResponse> call({
    String? phoneNumber = '',
    String? password = '',
  }) async {
    final ffApiRequestBody = '''
{
  "phoneNumber": "${escapeStringForJson(phoneNumber)}",
  "password": "${escapeStringForJson(password)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'loginweb API',
      apiUrl: 'https://hospital-booking-dpd3.onrender.com/auth/web',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetAllExamRoomAPICall {
  static Future<ApiCallResponse> call({
    String? token = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'getAllExamRoom API',
      apiUrl: 'https://hospital-booking-dpd3.onrender.com/examroom',
      callType: ApiCallType.GET,
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer $token',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class RequestOTPAPICall {
  static Future<ApiCallResponse> call({
    String? phoneNumber = '',
  }) async {
    final ffApiRequestBody = '''
{
  "phoneNumber": "${escapeStringForJson(phoneNumber)}",
  "isAuthenticated": false
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'requestOTP API',
      apiUrl: 'https://hospital-booking-dpd3.onrender.com/otp/request',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class VerifyOTPAPICall {
  static Future<ApiCallResponse> call({
    String? phoneNumber = '',
    String? otp = '',
    String? expireAt = '',
  }) async {
    final ffApiRequestBody = '''
{
  "phone_number": "${escapeStringForJson(phoneNumber)}",
  "otp": "${escapeStringForJson(otp)}",
  "expireAt": "${escapeStringForJson(expireAt)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'verifyOTP API',
      apiUrl: 'https://hospital-booking-dpd3.onrender.com/otp/verify',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class CountUserAPICall {
  static Future<ApiCallResponse> call({
    String? token = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'countUser API',
      apiUrl: 'https://hospital-booking-dpd3.onrender.com/users/count',
      callType: ApiCallType.GET,
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer $token',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static int? user(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.data.USER''',
      ));
  static int? doctor(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.data.DOCTOR''',
      ));
  static int? admin(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.data.ADMIN''',
      ));
  static int? total(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.data.total''',
      ));
}

class CountRoomAPICall {
  static Future<ApiCallResponse> call({
    String? token = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'countRoom API',
      apiUrl: 'https://hospital-booking-dpd3.onrender.com/examroom/count',
      callType: ApiCallType.GET,
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer $token',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetAllMedicineAPICall {
  static Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'getAllMedicine API',
      apiUrl: 'https://hospital-booking-dpd3.onrender.com/medicine',
      callType: ApiCallType.GET,
      headers: {
        'Content-Type': 'application/json',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetAllUserAPICall {
  static Future<ApiCallResponse> call({
    String? token = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'getAllUser API',
      apiUrl: 'https://hospital-booking-dpd3.onrender.com/users',
      callType: ApiCallType.GET,
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer $token',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class LogoutAPICall {
  static Future<ApiCallResponse> call({
    String? token = '',
  }) async {
    final ffApiRequestBody = '''
{
  "token": "${escapeStringForJson(token)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'logout API',
      apiUrl: 'https://hospital-booking-dpd3.onrender.com/auth/logout',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class CountMedicineAPICall {
  static Future<ApiCallResponse> call({
    String? token = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'countMedicine API',
      apiUrl: 'https://hospital-booking-dpd3.onrender.com/medicine/count',
      callType: ApiCallType.GET,
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer $token',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class CreateMedicineAPICall {
  static Future<ApiCallResponse> call({
    String? token = '',
    String? name = '',
    String? level = '',
    String? price = '',
    String? quantity = '',
    FFUploadedFile? image,
    String? description = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'createMedicine API',
      apiUrl: 'https://hospital-booking-dpd3.onrender.com/medicine/create',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer $token',
      },
      params: {
        'name': name,
        'level': level,
        'price': price,
        'quantity': quantity,
        'image': image,
        'description': description,
      },
      bodyType: BodyType.MULTIPART,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class AdminCreateDoctorAPICall {
  static Future<ApiCallResponse> call({
    String? token = '',
    String? username = '',
    String? email = '',
    String? phoneNumber = '',
    String? identifyCard = '',
    String? type = '',
  }) async {
    final ffApiRequestBody = '''
{
  "username": "${escapeStringForJson(username)}",
  "email": "${escapeStringForJson(email)}",
  "phoneNumber": "${escapeStringForJson(phoneNumber)}",
  "identifyCard": "${escapeStringForJson(identifyCard)}",
  "type": "${escapeStringForJson(type)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'adminCreateDoctor API',
      apiUrl: 'https://hospital-booking-dpd3.onrender.com/users/createDoctor',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer $token',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class AdminCreateStaffAPICall {
  static Future<ApiCallResponse> call({
    String? token = '',
    String? username = '',
    String? email = '',
    String? phoneNumber = '',
    String? identifyCard = '',
  }) async {
    final ffApiRequestBody = '''
{
  "username": "${escapeStringForJson(username)}",
  "email": "${escapeStringForJson(email)}",
  "phoneNumber": "${escapeStringForJson(phoneNumber)}",
  "identifyCard": "${escapeStringForJson(identifyCard)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'adminCreateStaff API',
      apiUrl: 'https://hospital-booking-dpd3.onrender.com/users/createStaff',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer $token',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class UpdatestatusAPICall {
  static Future<ApiCallResponse> call({
    String? phoneNumber = '',
    String? token = '',
  }) async {
    final ffApiRequestBody = '''
{
  "phoneNumber": "${escapeStringForJson(phoneNumber)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'updatestatus API',
      apiUrl: 'https://hospital-booking-dpd3.onrender.com/users/updatestatus',
      callType: ApiCallType.PUT,
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer $token',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class UpdatestatusMedicineAPICall {
  static Future<ApiCallResponse> call({
    String? id = '',
    String? token = '',
  }) async {
    final ffApiRequestBody = '''
{
  "id": "${escapeStringForJson(id)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'updatestatusMedicine API',
      apiUrl:
          'https://hospital-booking-dpd3.onrender.com/medicine/updatestatus',
      callType: ApiCallType.PUT,
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer $token',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class UpdateinfoAPICall {
  static Future<ApiCallResponse> call({
    String? phoneNumber = '',
    String? username = '',
    String? email = '',
    String? identifyCard = '',
    String? token = '',
  }) async {
    final ffApiRequestBody = '''
{
  "phoneNumber": "${escapeStringForJson(phoneNumber)}",
  "username": "${escapeStringForJson(username)}",
  "email": "${escapeStringForJson(email)}",
  "identifyCard": "${escapeStringForJson(identifyCard)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'updateinfo API',
      apiUrl: 'https://hospital-booking-dpd3.onrender.com/users/updateinfo',
      callType: ApiCallType.PUT,
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer $token',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class UpdateMedicineCall {
  static Future<ApiCallResponse> call({
    String? token = '',
    String? id = '',
    String? name = '',
    String? quantity = '',
    String? description = '',
    String? level = '',
    String? price = '',
    FFUploadedFile? image,
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'updateMedicine',
      apiUrl: 'https://hospital-booking-dpd3.onrender.com/medicine/update',
      callType: ApiCallType.PUT,
      headers: {
        'Authorization': 'Bearer $token',
        'Content-Type': 'application/json',
      },
      params: {
        'id': id,
        'name': name,
        'quantity': quantity,
        'description': description,
        'level': level,
        'price': price,
        'image': image,
      },
      bodyType: BodyType.MULTIPART,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class CreateExamRoomAPICall {
  static Future<ApiCallResponse> call({
    String? examDate = '',
    String? examTime = '',
    int? roomNumber = 1,
    int? maxPatients = 0,
    String? token = '',
  }) async {
    final ffApiRequestBody = '''
{
  "examDate": "${escapeStringForJson(examDate)}",
  "examTime": "${escapeStringForJson(examTime)}",
  "roomNumber": $roomNumber,
  "maxPatients": $maxPatients
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'createExamRoom API',
      apiUrl: 'https://hospital-booking-dpd3.onrender.com/examroom/create',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer $token',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class UpdateExamRoomAPICall {
  static Future<ApiCallResponse> call({
    String? id = '',
    int? maxPatients = 0,
    String? token = '',
  }) async {
    final ffApiRequestBody = '''
{
  "id": "${escapeStringForJson(id)}",
  "maxPatients": $maxPatients
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'updateExamRoom API',
      apiUrl: 'https://hospital-booking-dpd3.onrender.com/examroom/update',
      callType: ApiCallType.PUT,
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer $token',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class UpdatePassAdminAPICall {
  static Future<ApiCallResponse> call({
    String? token = '',
    String? password = '',
    String? newPass = '',
    String? phoneNumber = '',
  }) async {
    final ffApiRequestBody = '''
{
  "phoneNumber": "${escapeStringForJson(phoneNumber)}",
  "password": "${escapeStringForJson(password)}",
  "newPass": "${escapeStringForJson(newPass)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'updatePassAdmin API',
      apiUrl:
          'https://hospital-booking-dpd3.onrender.com/users/updatepassadmin',
      callType: ApiCallType.PUT,
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer $token',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ForgotPassAPICall {
  static Future<ApiCallResponse> call({
    String? phoneNumber = '',
    String? password = '',
  }) async {
    final ffApiRequestBody = '''
{
  "phoneNumber": "${escapeStringForJson(phoneNumber)}",
  "password": "${escapeStringForJson(password)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'forgotPass API',
      apiUrl: 'https://hospital-booking-dpd3.onrender.com/users/forgotpass',
      callType: ApiCallType.PUT,
      headers: {
        'Content-Type': 'application/json',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class CountUserMonthAPICall {
  static Future<ApiCallResponse> call({
    String? token = '',
  }) async {
    const ffApiRequestBody = '''
{
  "year": "2024"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'countUserMonth API',
      apiUrl: 'https://hospital-booking-dpd3.onrender.com/users/month',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer $token',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetRecordByPatientCodeAPICall {
  static Future<ApiCallResponse> call({
    String? token = '',
    String? patientCode = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'getRecordByPatientCode API',
      apiUrl: 'https://hospital-booking-dpd3.onrender.com/record/patientCode',
      callType: ApiCallType.GET,
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Beaer $token',
        'patientcode': '$patientCode',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetRecordAPICall {
  static Future<ApiCallResponse> call({
    String? token = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'getRecord API',
      apiUrl: 'https://hospital-booking-dpd3.onrender.com/record',
      callType: ApiCallType.GET,
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Beaer $token',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetMonthMedicineAPICall {
  static Future<ApiCallResponse> call({
    String? token = '',
  }) async {
    const ffApiRequestBody = '''
{
  "year": "2024"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'getMonthMedicine API',
      apiUrl: 'https://hospital-booking-dpd3.onrender.com/medicine/month',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer $token',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetStatisticRecordAPICall {
  static Future<ApiCallResponse> call({
    String? token = '',
    String? inputdate = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'getStatisticRecord API',
      apiUrl: 'https://hospital-booking-dpd3.onrender.com/record/statistic',
      callType: ApiCallType.GET,
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer $token',
        'inputdate': '$inputdate',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class CreateRecordAPICall {
  static Future<ApiCallResponse> call({
    String? note = '',
    dynamic medicinesJson,
    String? token = '',
    String? weight = '',
    String? height = '',
    String? bmi = '',
    String? heartRate = '',
    String? respiratoryRate = '',
    String? bloodPressure = '',
    String? spO2 = '',
    String? diagnosis = '',
    String? examResult = '',
    String? id = '',
    String? clinicalIndicator = '',
  }) async {
    final medicines = _serializeJson(medicinesJson, true);
    final ffApiRequestBody = '''
{
  "note": "${escapeStringForJson(note)}",
  "weight": "${escapeStringForJson(weight)}",
  "height": "${escapeStringForJson(height)}",
  "bmi": "${escapeStringForJson(bmi)}",
  "heartRate": "${escapeStringForJson(heartRate)}",
  "respiratoryRate": "${escapeStringForJson(respiratoryRate)}",
  "bloodPressure": "${escapeStringForJson(bloodPressure)}",
  "spO2": "${escapeStringForJson(spO2)}",
  "diagnosis": "${escapeStringForJson(diagnosis)}",
  "examResult": "${escapeStringForJson(examResult)}",
  "id": "${escapeStringForJson(id)}",
  "clinicalIndicator": "${escapeStringForJson(clinicalIndicator)}",
  "medicines": $medicines
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'create record API',
      apiUrl: 'https://hospital-booking-dpd3.onrender.com/record',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer $token',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ImportFileRecordAPICall {
  static Future<ApiCallResponse> call({
    FFUploadedFile? image,
    String? token = '',
    String? id = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'importFileRecord API',
      apiUrl: 'https://hospital-booking-dpd3.onrender.com/record/flutterflow',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer $token',
      },
      params: {
        'image': image,
        'id': id,
      },
      bodyType: BodyType.MULTIPART,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ApproveRequestRecordAPICall {
  static Future<ApiCallResponse> call({
    String? token = '',
    String? medicalRecordId = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'approveRequestRecord API',
      apiUrl: 'https://hospital-booking-dpd3.onrender.com/record/approve',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer $token',
      },
      params: {
        'id': medicalRecordId,
      },
      bodyType: BodyType.MULTIPART,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetRecordByIdAPICall {
  static Future<ApiCallResponse> call({
    String? token = '',
    String? id = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'getRecordById API',
      apiUrl: 'https://hospital-booking-dpd3.onrender.com/record/id',
      callType: ApiCallType.GET,
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer $token',
        'id': '$id',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetRecordByRecordCodeCall {
  static Future<ApiCallResponse> call({
    String? token = '',
    String? recordCode = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'getRecordByRecordCode',
      apiUrl: 'https://hospital-booking-dpd3.onrender.com/record/recordCode',
      callType: ApiCallType.GET,
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer $token',
        'recordcode': '$recordCode',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetRecordByStaffAPICall {
  static Future<ApiCallResponse> call({
    String? token = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'getRecordByStaff API',
      apiUrl: 'https://hospital-booking-dpd3.onrender.com/record/staff',
      callType: ApiCallType.GET,
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer $token',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetRecordByDoctorAPICall {
  static Future<ApiCallResponse> call({
    String? token = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'getRecordByDoctor API',
      apiUrl: 'https://hospital-booking-dpd3.onrender.com/record/doctor',
      callType: ApiCallType.GET,
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer $token',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetSalaryForDoctorAPICall {
  static Future<ApiCallResponse> call({
    String? token = '',
    String? month = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'getSalaryForDoctor API',
      apiUrl: 'https://hospital-booking-dpd3.onrender.com/doctor/salary',
      callType: ApiCallType.GET,
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer $token',
        'month': '$month',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetScheduleForDoctorAPICall {
  static Future<ApiCallResponse> call({
    String? token = '',
    String? date = '',
  }) async {
    final ffApiRequestBody = '''
{
  "date": "${escapeStringForJson(date)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'getScheduleForDoctor API',
      apiUrl: 'https://hospital-booking-dpd3.onrender.com/doctor/schedule',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer $token',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ApiPagingParams {
  int nextPageNumber = 0;
  int numItems = 0;
  dynamic lastResponse;

  ApiPagingParams({
    required this.nextPageNumber,
    required this.numItems,
    required this.lastResponse,
  });

  @override
  String toString() =>
      'PagingParams(nextPageNumber: $nextPageNumber, numItems: $numItems, lastResponse: $lastResponse,)';
}

String _toEncodable(dynamic item) {
  return item;
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("List serialization failed. Returning empty list.");
    }
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("Json serialization failed. Returning empty json.");
    }
    return isList ? '[]' : '{}';
  }
}

String? escapeStringForJson(String? input) {
  if (input == null) {
    return null;
  }
  return input
      .replaceAll('\\', '\\\\')
      .replaceAll('"', '\\"')
      .replaceAll('\n', '\\n')
      .replaceAll('\t', '\\t');
}
