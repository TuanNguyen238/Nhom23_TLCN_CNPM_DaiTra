import 'dart:convert';

import 'package:flutter/foundation.dart';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

class RegisterAPICall {
  static Future<ApiCallResponse> call({
    String? username = '',
    String? phoneNumber = '',
    String? email = '',
    String? identifyCard = '',
    String? pasword = '',
  }) async {
    final ffApiRequestBody = '''
{
  "username": "$username",
  "email": "$email",
  "password": "$pasword",
  "phoneNumber": "$phoneNumber",
  "identifyCard": "$identifyCard",
  "status": "active",
  "role": "USER"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'register API',
      apiUrl: 'https://hospital-booking-dpd3.onrender.com/users',
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

class LoginAPICall {
  static Future<ApiCallResponse> call({
    String? phoneNumber = '',
    String? password = '',
  }) async {
    final ffApiRequestBody = '''
{
  "phoneNumber": "$phoneNumber",
  "password": "$password"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'login API',
      apiUrl: 'https://hospital-booking-dpd3.onrender.com/auth',
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

class RequestOTPAPICall {
  static Future<ApiCallResponse> call({
    String? phoneNumber = '',
  }) async {
    final ffApiRequestBody = '''
{
  "phoneNumber": "$phoneNumber",
  "isAuthenticated": true
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'request OTP API',
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
  "phoneNumber": "$phoneNumber",
  "otp": "$otp",
  "expireAt": "$expireAt"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'verify OTP API',
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

class ForgotpassAPICall {
  static Future<ApiCallResponse> call({
    String? phoneNumber = '',
    String? password = '',
  }) async {
    final ffApiRequestBody = '''
{
  "phoneNumber": "$phoneNumber",
  "password": "$password"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'forgotpass API',
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

class UpdatepassAPICall {
  static Future<ApiCallResponse> call({
    String? password = '',
    String? newPass = '',
    String? authToken = '',
  }) async {
    final ffApiRequestBody = '''
{
  "password": "$password",
  "newPass": "$newPass"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'updatepass API',
      apiUrl: 'https://hospital-booking-dpd3.onrender.com/users/updatepass',
      callType: ApiCallType.PUT,
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer $authToken',
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
    String? username = '',
    String? email = '',
    String? identifyCard = '',
    String? authToken = '',
  }) async {
    final ffApiRequestBody = '''
{
  "username": "$username",
  "email": "$email",
  "identifyCard": "$identifyCard"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'updateinfo API',
      apiUrl: 'https://hospital-booking-dpd3.onrender.com/users/updateinfo',
      callType: ApiCallType.PUT,
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer $authToken',
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

class CreatePatientAPICall {
  static Future<ApiCallResponse> call({
    String? authToken = '',
    String? fullName = '',
    String? phoneNumberPatient = '',
    String? address = '',
    String? identifyCard = '',
    String? dateOfBirth = '',
    String? fullNameRLT = '',
    String? phoneNumberRLT = '',
    String? addressRLT = '',
    String? relations = '',
    String? gender = '',
  }) async {
    final ffApiRequestBody = '''
{
  "fullName": "$fullName",
  "phoneNumberPatient": "$phoneNumberPatient",
  "address": "$address",
  "identifyCard": "$identifyCard",
  "dateOfBirth": "$dateOfBirth",
  "fullNameRLT": "$fullNameRLT",
  "phoneNumberRLT": "$phoneNumberRLT",
  "addressRLT": "$addressRLT",
  "relations": "$relations",
  "gender": "$gender"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'createPatient API',
      apiUrl: 'https://hospital-booking-dpd3.onrender.com/patient/create',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer $authToken',
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

class UpdatePatientAPICall {
  static Future<ApiCallResponse> call({
    String? authToken = '',
    String? fullName = '',
    String? phoneNumberPatient = '',
    String? address = '',
    String? identifyCard = '',
    String? dateOfBirth = '',
    String? fullNameRLT = '',
    String? phoneNumberRLT = '',
    String? addressRLT = '',
    String? relations = '',
    String? gender = '',
    String? patientCode = '',
  }) async {
    final ffApiRequestBody = '''
{
  "patientCode": "$patientCode",
  "fullName": "$fullName",
  "phoneNumberPatient": "$phoneNumberPatient",
  "address": "$address",
  "identifyCard": "$identifyCard",
  "dateOfBirth": "$dateOfBirth",
  "fullNameRLT": "$fullNameRLT",
  "phoneNumberRLT": "$phoneNumberRLT",
  "addressRLT": "$addressRLT",
  "relations": "$relations",
  "gender": "$gender"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'updatePatient API',
      apiUrl: 'https://hospital-booking-dpd3.onrender.com/patient/updateInfo',
      callType: ApiCallType.PUT,
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer $authToken',
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

class GetAllPatientAPICall {
  static Future<ApiCallResponse> call({
    String? authToken = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'getAllPatient API',
      apiUrl: 'https://hospital-booking-dpd3.onrender.com/patient/current',
      callType: ApiCallType.GET,
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer $authToken',
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
    String? authToken = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'getRecord API',
      apiUrl: 'https://hospital-booking-dpd3.onrender.com/record/current',
      callType: ApiCallType.GET,
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer $authToken',
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

class GetAvailableTImeAPICall {
  static Future<ApiCallResponse> call({
    String? examDate = '',
  }) async {
    final ffApiRequestBody = '''
{
  "examDate": "$examDate"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'getAvailableTIme API',
      apiUrl: 'https://hospital-booking-dpd3.onrender.com/examroom/time',
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

class IntrospectAPICall {
  static Future<ApiCallResponse> call({
    String? authToken = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'introspect API',
      apiUrl: 'https://hospital-booking-dpd3.onrender.com/auth/introspect',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer $authToken',
      },
      params: {},
      bodyType: BodyType.NONE,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class BookAPICall {
  static Future<ApiCallResponse> call({
    String? patientCode = '',
    String? examDate = '',
    String? examTime = '',
    String? reasonForVisit = '',
    String? authToken = '',
    bool? paid,
  }) async {
    final ffApiRequestBody = '''
{
  "patientCode": "$patientCode",
  "examDate": "$examDate",
  "examTime": "$examTime",
  "reasonForVisit": "$reasonForVisit",
  "paid": $paid
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'book API',
      apiUrl: 'https://hospital-booking-dpd3.onrender.com/record/book',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer $authToken',
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

class GetUserByIDCall {
  static Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'getUserByID',
      apiUrl: 'https://hospital-booking-dpd3.onrender.com/users/current',
      callType: ApiCallType.GET,
      headers: {
        'Content-Type': 'application/json',
      },
      params: {
        'id': "1",
      },
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
    return ApiManager.instance.makeApiCall(
      callName: 'logout API',
      apiUrl: 'https://hospital-booking-dpd3.onrender.com/auth/logout',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
      },
      params: {},
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

class GetRecordByPatientCodeCall {
  static Future<ApiCallResponse> call({
    String? patientCode = '',
    String? token = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'getRecordByPatientCode',
      apiUrl: 'https://hospital-booking-dpd3.onrender.com/record/patientCode',
      callType: ApiCallType.GET,
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer $token',
        'patientCode': '$patientCode',
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

class TestEnvCall {
  static Future<ApiCallResponse> call() async {
    const ffApiRequestBody = '''
{
  "phoneNumber": "0123456789",
  "password": "2908203Hen@"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'testEnv',
      apiUrl: 'http://localhost:8085/auth',
      callType: ApiCallType.POST,
      headers: {},
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

class GetRecordByPhoneNumberCall {
  static Future<ApiCallResponse> call({
    String? token = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'getRecordByPhoneNumber',
      apiUrl: 'https://hospital-booking-dpd3.onrender.com/record/phoneNumber',
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

class InitChatBotAPICall {
  static Future<ApiCallResponse> call({
    String? token,
  }) async {
    token ??= FFDevEnvironmentValues().tokenChatBot;

    return ApiManager.instance.makeApiCall(
      callName: 'initChatBot API',
      apiUrl:
          'https://typebot.io/api/v1/typebots/cm489p3x60001egup2ei3tiyp/preview/startChat',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer $token',
      },
      params: {},
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

class ResponseChatBotAPICall {
  static Future<ApiCallResponse> call({
    String? sessionid = '',
    String? message = '',
  }) async {
    const ffApiRequestBody = '''
{
  "message": [message]
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'responseChatBot API',
      apiUrl: 'https://typebot.io/api/v1/sessions/$sessionid/continueChat',
      callType: ApiCallType.POST,
      headers: {},
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

class GetNotificationCurrentAPICall {
  static Future<ApiCallResponse> call({
    String? token = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'getNotificationCurrent API',
      apiUrl: 'https://hospital-booking-dpd3.onrender.com/notification/current',
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

class GetRecordByIdCall {
  static Future<ApiCallResponse> call({
    String? token = '',
    String? id = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'getRecordById',
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

class DeletePatientByIdCall {
  static Future<ApiCallResponse> call({
    String? token = '',
    String? id = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'deletePatientById',
      apiUrl: 'https://hospital-booking-dpd3.onrender.com/patient',
      callType: ApiCallType.DELETE,
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
  if (item is DocumentReference) {
    return item.path;
  }
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
