// Automatic FlutterFlow imports
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'dart:io';
import 'dart:convert';

import 'package:path_provider/path_provider.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;

import 'dart:html' as html;

Future exportPDF(
  List<DosageInputStruct>? dosages,
  PatientStruct? patient,
  List<String>? medicine,
) async {
  final pdf = pw.Document();

  pdf.addPage(
    pw.Page(
      build: (pw.Context context) {
        return pw.Column(
          children: [
            pw.Text('Patient Information'),
            pw.Text('Name: ${patient?.fullName}'),
            pw.Text('Gender: ${patient?.gender}'),
            pw.Text('Dosages:'),
            pw.Table(
              border: pw.TableBorder.all(),
              children: [
                // Header row
                pw.TableRow(
                  children: [
                    pw.Text('medicine',
                        style: pw.TextStyle(fontWeight: pw.FontWeight.bold)),
                    pw.Text('morning',
                        style: pw.TextStyle(fontWeight: pw.FontWeight.bold)),
                    pw.Text('afternoon',
                        style: pw.TextStyle(fontWeight: pw.FontWeight.bold)),
                    pw.Text('evening',
                        style: pw.TextStyle(fontWeight: pw.FontWeight.bold)),
                    pw.Text('days',
                        style: pw.TextStyle(fontWeight: pw.FontWeight.bold)),
                  ],
                ),
                // Data rows
                ...dosages!.asMap().entries.map(
                  (entry) {
                    int index = entry.key;
                    DosageInputStruct row = entry.value;
                    return pw.TableRow(
                      children: [
                        pw.Text(medicine![index].toString()),
                        pw.Text(row.morning.toString()),
                        pw.Text(row.afternoon.toString()),
                        pw.Text(row.evening.toString()),
                        pw.Text(row.days.toString()),
                      ],
                    );
                  },
                ),
              ],
            ),
          ],
        );
      },
    ),
  );

  // Save the PDF document to a file
  var savedFile = await pdf.save();
  List<int> fileInts = List.from(savedFile);
  html.AnchorElement()
    ..href =
        "data:application/octet-stream;charset=utf-16le;base64,${base64.encode(fileInts)}"
    ..setAttribute("download", "${DateTime.now().millisecondsSinceEpoch}.pdf")
    ..click();

  // Open the PDF document using a PDF viewerath);
}
