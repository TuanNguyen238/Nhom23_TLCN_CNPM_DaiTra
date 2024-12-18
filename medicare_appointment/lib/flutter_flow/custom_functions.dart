import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/backend.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '/backend/schema/structs/index.dart';
import '/auth/custom_auth/auth_util.dart';

String currentTime() {
  // return datetime.now .toISO8601 toString()
  return DateTime.now().toIso8601String();
}

List<String> getCalendar(DateTime medicalDate) {
  final DateFormat formatter = DateFormat('EEEE dd/MM');
  Map<String, String> daysMapping = {
    'Monday': 'T2',
    'Tuesday': 'T3',
    'Wednesday': 'T4',
    'Thursday': 'T5',
    'Friday': 'T6',
    'Saturday': 'T7',
    'Sunday': 'CN'
  };

  List<String> next7Days = [];

  for (int i = 0; i < 7; i++) {
    DateTime currentDate = medicalDate.add(Duration(days: i));
    String formattedDate = formatter.format(currentDate);
    String weekday = formattedDate.split(' ')[0];
    String shortDay = daysMapping[weekday] ?? weekday;

    next7Days.add(formattedDate.replaceFirst(weekday, shortDay));
  }

  return next7Days;
}

DateTime getCurrentDate() {
  return DateTime.now().add(Duration(days: 1));
}

String getDateTimeExamRoom(
  DateTime currentDate,
  String dateSelected,
) {
  final DateFormat formatter = DateFormat('yyyy-MM-dd');
  final DateFormat displayFormatter = DateFormat('dd/MM');

  const List<String> weekdays = ['T2', 'T3', 'T4', 'T5', 'T6', 'T7', 'CN'];

  List<DateTime> next7Days = [];

  for (int i = 0; i < 7; i++) {
    DateTime date = currentDate.add(Duration(days: i));
    next7Days.add(date);
  }

  for (DateTime date in next7Days) {
    String weekday = weekdays[date.weekday - 1];
    String formattedDate = weekday + ' ' + displayFormatter.format(date);

    if (formattedDate == dateSelected) {
      return formatter.format(date);
    }
  }

  return "Date not found";
}

List<String>? getLocationSplitted(String? location) {
  if (location == null || location.isEmpty) {
    return null;
  }

  final components = location.split(',').map((e) => e.trim()).toList();

  if (components.length < 3) {
    return null;
  }

  final province = components.last;
  final district = components[components.length - 2];
  final ward = components[components.length - 3];
  final detailAddress = components.sublist(0, components.length - 3).join(', ');

  return [detailAddress, ward, district, province];
}

bool? checkTimeMessage(int? createSecond) {
  return (createSecond! + 3) == DateTime.now().second;
}

int? countMedicines(DosagesStruct? dosage) {
  return (dosage!.evening + dosage.afternoon + dosage.morning) * dosage.days;
}

String createContentNotification(
  String content,
  String relativeTime,
) {
  return content + "\n" + relativeTime;
}
