// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import '/custom_code/actions/index.dart'; // Imports custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:vn_provinces/province.dart';
import 'package:vn_provinces/vn_provinces.dart';

class LocationVN extends StatefulWidget {
  const LocationVN({
    super.key,
    this.width,
    this.height,
    this.initialProvince,
    this.initialDistrict,
    this.initialWard,
  });

  final double? width;
  final double? height;
  final String? initialProvince;
  final String? initialDistrict;
  final String? initialWard;

  @override
  State<LocationVN> createState() => _LocationVNState();
}

class _LocationVNState extends State<LocationVN> {
  final vnProvinces = VNProvinces();
  List<VNProvince> provinces = [];
  List<VNDistrict> districts = [];
  List<VNWard> wards = [];
  VNProvince? selectedProvince;
  VNDistrict? selectedDistrict;
  VNWard? selectedWard;
  bool isLoadingDistricts = false;
  bool isLoadingWards = false;

  @override
  void initState() {
    super.initState();
    _loadProvinces().then((_) {
      selectedProvince = provinces.firstWhere(
        (province) => province.name == widget.initialProvince,
        orElse: () => provinces[0],
      );

      if (selectedProvince != null) {
        FFAppState().city = selectedProvince!.name;
        _loadDistricts(selectedProvince!.code).then((_) {
          selectedDistrict = districts.firstWhere(
            (district) => district.name == widget.initialDistrict,
            orElse: () => districts[0],
          );

          if (selectedDistrict != null) {
            FFAppState().district = selectedDistrict!.name;
            _loadWards(selectedDistrict!.code).then((_) {
              selectedWard = wards.firstWhere(
                (ward) => ward.name == widget.initialWard,
                orElse: () => wards[0],
              );
              if (selectedWard != null) {
                FFAppState().ward = selectedWard!.name;
              }
            });
          }
        });
      }
    });
  }

  Future<void> _loadProvinces() async {
    try {
      final response = await vnProvinces.allProvince(keyword: "");
      setState(() {
        provinces = response;
      });
    } catch (e) {
      print('Error loading provinces: $e');
    }
  }

  Future<void> _loadDistricts(int provinceCode) async {
    setState(() {
      isLoadingDistricts = true;
      districts = [];
      selectedDistrict = null;
      selectedWard = null;
      wards = [];
    });

    try {
      final response = await vnProvinces.allDistrict(provinceCode, keyword: "");
      setState(() {
        districts = response;
      });
    } catch (e) {
      print('Error loading districts: $e');
    } finally {
      setState(() {
        isLoadingDistricts = false;
      });
    }
  }

  Future<void> _loadWards(int districtCode) async {
    setState(() {
      isLoadingWards = true;
      wards = [];
      selectedWard = null;
    });

    try {
      final response = await vnProvinces.allWard(districtCode, keyword: "");
      setState(() {
        wards = response;
      });
    } catch (e) {
      print('Error loading wards: $e');
    } finally {
      setState(() {
        isLoadingWards = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Padding(
        padding: const EdgeInsets.all(0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              padding: const EdgeInsetsDirectional.fromSTEB(8, 20, 8, 0),
              child: DropdownButtonFormField<VNProvince>(
                decoration: InputDecoration(
                  contentPadding: const EdgeInsets.symmetric(horizontal: 16.0),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8.0),
                    borderSide: BorderSide(
                      color: Theme.of(context).colorScheme.secondary,
                      width: 2,
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8.0),
                    borderSide: BorderSide(
                      color: Color(0xFF57636C), // Màu khi không focus
                      width: 1,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8.0),
                    borderSide: BorderSide(
                      color: Color(0xFF204A9C), // Màu khi focus
                      width: 1,
                    ),
                  ),
                  filled: true,
                  fillColor: Colors.white,
                ),
                hint: Text(
                  'Chọn Tỉnh/Thành phố',
                  style: FlutterFlowTheme.of(context).labelMedium.override(
                        fontFamily: 'Readex Pro',
                        letterSpacing: 0,
                        fontSize: 14,
                        color: FlutterFlowTheme.of(context).secondaryText,
                      ),
                ),
                value: selectedProvince,
                items: provinces.map((VNProvince province) {
                  return DropdownMenuItem<VNProvince>(
                    value: province,
                    child: Text(province.name),
                  );
                }).toList(),
                onChanged: (value) {
                  setState(() {
                    selectedProvince = value;
                    selectedDistrict = null;
                    selectedWard = null;
                    districts = [];
                    wards = [];
                    if (value != null) {
                      _loadDistricts(value.code);
                      FFAppState().city = value.name; // Save city to app state
                    } else {
                      FFAppState().city = '';
                    }
                  });
                },
              ),
            ),
            AbsorbPointer(
              absorbing: selectedProvince == null || isLoadingDistricts,
              child: Container(
                padding: const EdgeInsetsDirectional.fromSTEB(8, 20, 8, 0),
                child: DropdownButtonFormField<VNDistrict>(
                  decoration: InputDecoration(
                    contentPadding:
                        const EdgeInsets.symmetric(horizontal: 16.0),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8.0),
                      borderSide: BorderSide(
                        color: Theme.of(context).colorScheme.secondary,
                        width: 2,
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8.0),
                      borderSide: BorderSide(
                        color: Color(0xFF57636C), // Màu khi không focus
                        width: 1,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8.0),
                      borderSide: BorderSide(
                        color: Color(0xFF204A9C), // Màu khi focus
                        width: 1,
                      ),
                    ),
                    filled: true,
                    fillColor: Colors.white,
                  ),
                  hint: Text(
                    'Chọn Quận/Huyện',
                    style: FlutterFlowTheme.of(context).labelMedium.override(
                          fontFamily: 'Readex Pro',
                          letterSpacing: 0,
                          fontSize: 14,
                          color: FlutterFlowTheme.of(context).secondaryText,
                        ),
                  ),
                  value: selectedDistrict,
                  items: districts.map((VNDistrict district) {
                    return DropdownMenuItem<VNDistrict>(
                      value: district,
                      child: Text(district.name),
                    );
                  }).toList(),
                  onChanged: (value) {
                    setState(() {
                      selectedDistrict = value;
                      selectedWard = null;
                      wards = [];
                      if (value != null) {
                        _loadWards(value.code);
                        FFAppState().district =
                            value.name; // Save district to app state
                      } else {
                        FFAppState().district = '';
                      }
                    });
                  },
                ),
              ),
            ),
            AbsorbPointer(
              absorbing: selectedDistrict == null || isLoadingWards,
              child: Container(
                padding: const EdgeInsetsDirectional.fromSTEB(8, 20, 8, 0),
                child: DropdownButtonFormField<VNWard>(
                  decoration: InputDecoration(
                    contentPadding:
                        const EdgeInsets.symmetric(horizontal: 16.0),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8.0),
                      borderSide: BorderSide(
                        color: Theme.of(context).colorScheme.secondary,
                        width: 2,
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8.0),
                      borderSide: BorderSide(
                        color: Color(0xFF57636C), // Màu khi không focus
                        width: 1,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8.0),
                      borderSide: BorderSide(
                        color: Color(0xFF204A9C), // Màu khi focus
                        width: 1,
                      ),
                    ),
                    filled: true,
                    fillColor: Colors.white,
                  ),
                  hint: Text(
                    'Chọn Phường/Xã',
                    style: FlutterFlowTheme.of(context).labelMedium.override(
                          fontFamily: 'Readex Pro',
                          letterSpacing: 0,
                          fontSize: 14,
                          color: FlutterFlowTheme.of(context).secondaryText,
                        ),
                  ),
                  value: selectedWard,
                  items: wards.map((VNWard ward) {
                    return DropdownMenuItem<VNWard>(
                      value: ward,
                      child: Text(ward.name),
                    );
                  }).toList(),
                  onChanged: (value) {
                    setState(() {
                      selectedWard = value;
                      if (value != null) {
                        FFAppState().ward =
                            value.name; // Save ward to app state
                      } else {
                        FFAppState().ward = '';
                      }
                    });
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
