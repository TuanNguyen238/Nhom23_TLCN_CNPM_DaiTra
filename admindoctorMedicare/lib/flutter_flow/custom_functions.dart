import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/schema/structs/index.dart';

String currentTime() {
  return DateTime.now().toIso8601String();
}

List<String> getCalendar(DateTime medicalDate) {
  final DateFormat formatter = DateFormat('EEEE dd/MM');

  List<String> next7Days = [];

  for (int i = 0; i < 7; i++) {
    DateTime currentDate = medicalDate.add(Duration(days: i));
    String formattedDate = formatter.format(currentDate);
    next7Days.add(formattedDate);
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
  final DateFormat displayFormatter = DateFormat('EEEE dd/MM');

  List<DateTime> next7Days = [];

  for (int i = 0; i < 7; i++) {
    DateTime date = currentDate.add(Duration(days: i));
    next7Days.add(date);
  }

  for (DateTime date in next7Days) {
    if (displayFormatter.format(date) == dateSelected) {
      return formatter.format(date);
    }
  }

  return "Date not found";
}

int getRoomNumber(String quantity) {
  // return type int from string
  return int.parse(quantity);
}

String? getExpireAtString() {
  // return a Datetime.now() toISO8061String
  return DateTime.now().toIso8601String();
}

List<int>? getCountUser(
  int user,
  int doctor,
  int admin,
  int total,
) {
  return [user, doctor, admin, total];
}

List<MedicineStruct>? getFilterMedicines(
  String? query,
  List<MedicineStruct>? medicines,
) {
  if (query == null || query.isEmpty || medicines == null) {
    return medicines;
  }
  final filteredMedicines = medicines?.where((medicine) {
    final idMatch = medicine.id?.contains(query) ?? false;
    final nameMatch = medicine.name?.contains(query) ?? false;
    final descriptionMatch = medicine.description?.contains(query) ?? false;
    final levelMatch = medicine.level?.toString().contains(query) ?? false;
    final priceMatch = medicine.price?.contains(query) ?? false;
    final quantityMatch =
        medicine.quantity?.toString().contains(query) ?? false;

    return idMatch ||
        nameMatch ||
        descriptionMatch ||
        levelMatch ||
        priceMatch ||
        quantityMatch;
  }).toList();

  return filteredMedicines;
}

List<UserStruct>? getFilterUsers(
  String? query,
  List<UserStruct>? users,
) {
  if (query == null || query.isEmpty || users == null) {
    return users;
  }
  final filteredUsers = users?.where((user) {
    final idMatch = user.id?.contains(query) ?? false;
    final usernameMatch = user.username?.contains(query) ?? false;
    final emailMatch = user.email?.contains(query) ?? false;
    final phoneNumberMatch = user.phoneNumber?.contains(query) ?? false;
    final identifyCardMatch = user.identifyCard?.contains(query) ?? false;
    final createdAtMatch = user.createdAt?.contains(query) ?? false;
    final roleNameMatch = user.role?.name?.contains(query) ?? false;

    return idMatch ||
        usernameMatch ||
        emailMatch ||
        phoneNumberMatch ||
        identifyCardMatch ||
        createdAtMatch ||
        roleNameMatch;
  }).toList();

  return filteredUsers;
}

List<RecordStruct>? getFilterAppointment(
  String? query,
  List<RecordStruct>? records,
) {
  if (query == null || query.isEmpty || records == null) {
    return records;
  }

  final filteredRecords = records?.where((record) {
    final idMatch = record.id?.contains(query) ?? false;
    final recordCodeMatch = record.recordCode?.contains(query) ?? false;
    final patientCodeMatch =
        record.patient?.patientCode?.contains(query) ?? false;
    final idRoomMatch = record.examRoom?.id?.contains(query) ?? false;
    final patientNameMatch = record.patient?.fullName?.contains(query) ?? false;

    return idMatch ||
        recordCodeMatch ||
        patientCodeMatch ||
        idRoomMatch ||
        patientNameMatch;
  }).toList();

  return filteredRecords;
}

List<ExamRoomStruct>? getFilterExamRooms(
  String? query,
  List<ExamRoomStruct>? examRooms,
) {
  if (query == null || query.isEmpty || examRooms == null) {
    return examRooms;
  }
  final filteredRooms = examRooms.where((room) {
    final idMatch = room.id?.contains(query) ?? false;
    final examDateMatch = room.examDate?.contains(query) ?? false;
    final examTimeMatch = room.examTime?.contains(query) ?? false;
    final roomNumberMatch =
        room.roomNumber?.toString().contains(query) ?? false;
    final maxPatientsMatch =
        room.maxPatients?.toString().contains(query) ?? false;
    final currentPatientsMatch =
        room.currentPatients?.toString().contains(query) ?? false;

    return idMatch ||
        examDateMatch ||
        examTimeMatch ||
        roomNumberMatch ||
        maxPatientsMatch ||
        currentPatientsMatch;
  }).toList();

  return filteredRooms;
}

List<RecordStruct>? getFilterRecordForStaffAndDoctor(
  String? query,
  List<RecordStruct>? records,
) {
  if (query == null || query.isEmpty || records == null) {
    return records;
  }

  final filteredRecords = records?.where((record) {
    final phoneNumberMatch =
        record.patient?.phoneNumber?.contains(query) ?? false;
    final recordCodeMatch = record.recordCode?.contains(query) ?? false;
    final patientCodeMatch =
        record.patient?.patientCode?.contains(query) ?? false;
    final roomNumberMatch =
        record.examRoom?.roomNumber?.toString().contains(query) ?? false;
    final patientNameMatch = record.patient?.fullName?.contains(query) ?? false;
    final timeMatch = record.examRoom?.examTime?.contains(query) ?? false;

    return phoneNumberMatch ||
        recordCodeMatch ||
        patientCodeMatch ||
        roomNumberMatch ||
        patientNameMatch;
  }).toList();

  return filteredRecords;
}

double? calculatorBMI(
  String? w,
  String? h,
) {
  try {
    double a = double.parse(w!);
    double b = double.parse(h!) / 100;
    if (b > 0) {
      return double.parse((a / (b * b)).toStringAsFixed(1));
    }
    return 0;
  } on Exception catch (_) {
    return 0;
  }
}

List<String>? getBloodPressure(String? bloodPressure) {
  // split bloodPressure into list<String> by "/"
  if (bloodPressure != null) {
    return bloodPressure.split('/');
  } else {
    return null;
  }
}

List<DosageInputStruct>? getDosageInputFromRecord(
    List<DosagesStruct>? dosages) {
  if (dosages == null) {
    return null;
  }

  // Chuyển đổi danh sách từ DosagesStruct sang DosageInputStruct
  return dosages?.map((dosage) {
    return DosageInputStruct(
      medicineId: dosage.medicine?.id ?? '', // Lấy ID của medicine
      morning: dosage.morning.toString() ?? "", // Lấy giá trị morning
      afternoon: dosage.afternoon.toString() ?? "", // Lấy giá trị afternoon
      evening: dosage.evening.toString() ?? "", // Lấy giá trị evening
      days: dosage.days.toString() ?? "", // Lấy số ngày
    );
  }).toList();
}

bool checkMedicine(
  List<DosageInputStruct>? dosages,
  String medicineId,
) {
  // check if dosageInput.medicineId equal medicineId return true
  if (dosages == null) {
    return false;
  }

  for (var dosageInput in dosages) {
    if (dosageInput.medicineId == medicineId) {
      return true;
    }
  }

  return false;
}

String getMonthName(String month) {
  const monthReverseMap = {
    '1': 'Jan',
    '2': 'Feb',
    '3': 'Mar',
    '4': 'Apr',
    '5': 'May',
    '6': 'Jun',
    '7': 'Jul',
    '8': 'Aug',
    '9': 'Sep',
    '10': 'Oct',
    '11': 'Nov',
    '12': 'Dec',
  };

  return monthReverseMap[month] ?? 'Invalid month value';
}

String getMonthValue(String month) {
  const monthMap = {
    'Jan': '1',
    'Feb': '2',
    'Mar': '3',
    'Apr': '4',
    'May': '5',
    'Jun': '6',
    'Jul': '7',
    'Aug': '8',
    'Sep': '9',
    'Oct': '10',
    'Nov': '11',
    'Dec': '12',
  };

  return monthMap[month] ?? 'Invalid month';
}

String? getNameByID(
  List<MedicineStruct>? inputs,
  String? id,
) {
  for (MedicineStruct x in inputs!) {
    if (x.id == id) {
      return x.name;
    }
  }
  return "";
}
