import '/backend/schema/structs/index.dart';
import '/components/admin/row_action_staff/row_action_staff_widget.dart';
import '/flutter_flow/flutter_flow_data_table.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'data_table_staff_model.dart';
export 'data_table_staff_model.dart';

class DataTableStaffWidget extends StatefulWidget {
  const DataTableStaffWidget({
    super.key,
    required this.staffList,
  });

  final List<UserStruct>? staffList;

  @override
  State<DataTableStaffWidget> createState() => _DataTableStaffWidgetState();
}

class _DataTableStaffWidgetState extends State<DataTableStaffWidget> {
  late DataTableStaffModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => DataTableStaffModel());

    // On component load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      _model.staffList = widget!.staffList!.toList().cast<UserStruct>();
      safeSetState(() {});
    });

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Builder(
      builder: (context) {
        final staff = _model.staffList.toList();

        return FlutterFlowDataTable<UserStruct>(
          controller: _model.paginatedDataTableController,
          data: staff,
          columnsBuilder: (onSortChanged) => [
            DataColumn2(
              label: DefaultTextStyle.merge(
                softWrap: true,
                child: Text(
                  'User Id',
                  style: FlutterFlowTheme.of(context).labelLarge.override(
                        fontFamily: 'Open Sans',
                        color: FlutterFlowTheme.of(context).textHeading,
                        fontSize: 16.0,
                        letterSpacing: 0.0,
                        fontWeight: FontWeight.w600,
                      ),
                ),
              ),
            ),
            DataColumn2(
              label: DefaultTextStyle.merge(
                softWrap: true,
                child: Text(
                  'Username',
                  style: FlutterFlowTheme.of(context).labelLarge.override(
                        fontFamily: 'Open Sans',
                        color: FlutterFlowTheme.of(context).textHeading,
                        fontSize: 16.0,
                        letterSpacing: 0.0,
                        fontWeight: FontWeight.w600,
                      ),
                ),
              ),
            ),
            DataColumn2(
              label: DefaultTextStyle.merge(
                softWrap: true,
                child: Text(
                  'Created At',
                  style: FlutterFlowTheme.of(context).labelLarge.override(
                        fontFamily: 'Open Sans',
                        color: FlutterFlowTheme.of(context).textHeading,
                        fontSize: 16.0,
                        letterSpacing: 0.0,
                        fontWeight: FontWeight.w600,
                      ),
                ),
              ),
            ),
            DataColumn2(
              label: DefaultTextStyle.merge(
                softWrap: true,
                child: Text(
                  'Phone number',
                  style: FlutterFlowTheme.of(context).labelLarge.override(
                        fontFamily: 'Open Sans',
                        color: FlutterFlowTheme.of(context).textHeading,
                        fontSize: 16.0,
                        letterSpacing: 0.0,
                        fontWeight: FontWeight.w600,
                      ),
                ),
              ),
            ),
            DataColumn2(
              label: DefaultTextStyle.merge(
                softWrap: true,
                child: Text(
                  'Email',
                  style: FlutterFlowTheme.of(context).labelLarge.override(
                        fontFamily: 'Open Sans',
                        color: FlutterFlowTheme.of(context).textHeading,
                        fontSize: 16.0,
                        letterSpacing: 0.0,
                        fontWeight: FontWeight.w600,
                      ),
                ),
              ),
            ),
            DataColumn2(
              label: DefaultTextStyle.merge(
                softWrap: true,
                child: Text(
                  'Identify Card',
                  style: FlutterFlowTheme.of(context).labelLarge.override(
                        fontFamily: 'Open Sans',
                        color: FlutterFlowTheme.of(context).textHeading,
                        fontSize: 16.0,
                        letterSpacing: 0.0,
                        fontWeight: FontWeight.w600,
                      ),
                ),
              ),
            ),
            DataColumn2(
              label: DefaultTextStyle.merge(
                softWrap: true,
                child: Text(
                  'Role',
                  style: FlutterFlowTheme.of(context).labelLarge.override(
                        fontFamily: 'Open Sans',
                        color: FlutterFlowTheme.of(context).textHeading,
                        fontSize: 16.0,
                        letterSpacing: 0.0,
                        fontWeight: FontWeight.w600,
                      ),
                ),
              ),
            ),
            DataColumn2(
              label: DefaultTextStyle.merge(
                softWrap: true,
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      'Action',
                      style: FlutterFlowTheme.of(context).labelLarge.override(
                            fontFamily: 'Open Sans',
                            color: FlutterFlowTheme.of(context).textHeading,
                            fontSize: 16.0,
                            letterSpacing: 0.0,
                            fontWeight: FontWeight.w600,
                          ),
                    ),
                    FlutterFlowDropDown<String>(
                      controller: _model.dropDownValueController ??=
                          FormFieldController<String>(
                        _model.dropDownValue ??= 'all',
                      ),
                      options: List<String>.from(['all', 'active', 'inactive']),
                      optionLabels: ['All', 'Active', 'Inactive'],
                      onChanged: (val) async {
                        safeSetState(() => _model.dropDownValue = val);
                        _model.staffList =
                            widget!.staffList!.toList().cast<UserStruct>();
                        safeSetState(() {});
                        if (_model.dropDownValue != 'all') {
                          _model.staffList = widget!.staffList!
                              .where((e) => e.status == _model.dropDownValue)
                              .toList()
                              .cast<UserStruct>();
                          safeSetState(() {});
                        }
                      },
                      width: 100.0,
                      height: 30.0,
                      textStyle:
                          FlutterFlowTheme.of(context).bodyMedium.override(
                                fontFamily: 'Open Sans',
                                color: FlutterFlowTheme.of(context).textHeading,
                                fontSize: 16.0,
                                letterSpacing: 0.0,
                                fontWeight: FontWeight.w600,
                              ),
                      hintText: 'All',
                      icon: Icon(
                        Icons.keyboard_arrow_down_rounded,
                        color: FlutterFlowTheme.of(context).secondaryText,
                        size: 24.0,
                      ),
                      fillColor: Color(0xFFF1F7F9),
                      elevation: 2.0,
                      borderColor: Colors.transparent,
                      borderWidth: 0.0,
                      borderRadius: 8.0,
                      margin:
                          EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 12.0, 0.0),
                      hidesUnderline: true,
                      isOverButton: false,
                      isSearchable: false,
                      isMultiSelect: false,
                    ),
                  ].divide(SizedBox(width: 5.0)),
                ),
              ),
            ),
          ],
          dataRowBuilder: (staffItem, staffIndex, selected, onSelectChanged) =>
              DataRow(
            color: MaterialStateProperty.all(
              staffIndex % 2 == 0
                  ? FlutterFlowTheme.of(context).primaryText
                  : FlutterFlowTheme.of(context).primaryText,
            ),
            cells: [
              Text(
                staffItem.id,
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'Open Sans',
                      color: FlutterFlowTheme.of(context).textHeading,
                      fontSize: 16.0,
                      letterSpacing: 0.0,
                      fontWeight: FontWeight.w500,
                    ),
              ),
              Text(
                staffItem.username,
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'Open Sans',
                      color: FlutterFlowTheme.of(context).textHeading,
                      fontSize: 16.0,
                      letterSpacing: 0.0,
                      fontWeight: FontWeight.w500,
                    ),
              ),
              Text(
                staffItem.createdAt,
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'Open Sans',
                      color: FlutterFlowTheme.of(context).textHeading,
                      fontSize: 16.0,
                      letterSpacing: 0.0,
                      fontWeight: FontWeight.w500,
                    ),
              ),
              Text(
                staffItem.phoneNumber,
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'Open Sans',
                      color: FlutterFlowTheme.of(context).textHeading,
                      fontSize: 16.0,
                      letterSpacing: 0.0,
                      fontWeight: FontWeight.w500,
                    ),
              ),
              Text(
                staffItem.email,
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'Open Sans',
                      color: FlutterFlowTheme.of(context).textHeading,
                      fontSize: 16.0,
                      letterSpacing: 0.0,
                      fontWeight: FontWeight.w500,
                    ),
              ),
              Text(
                staffItem.identifyCard,
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'Open Sans',
                      color: FlutterFlowTheme.of(context).textHeading,
                      fontSize: 16.0,
                      letterSpacing: 0.0,
                      fontWeight: FontWeight.w500,
                    ),
              ),
              Text(
                staffItem.role.name,
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'Open Sans',
                      color: FlutterFlowTheme.of(context).textHeading,
                      fontSize: 16.0,
                      letterSpacing: 0.0,
                      fontWeight: FontWeight.w500,
                    ),
              ),
              RowActionStaffWidget(
                key: Key('Key7rj_${staffIndex}_of_${staff.length}'),
                phoneNumber: staffItem.phoneNumber,
                username: staffItem.username,
                email: staffItem.email,
                identifyCard: staffItem.identifyCard,
                status: staffItem.status,
              ),
            ].map((c) => DataCell(c)).toList(),
          ),
          paginated: true,
          selectable: false,
          hidePaginator: false,
          showFirstLastButtons: false,
          headingRowHeight: 60.0,
          dataRowHeight: 80.0,
          columnSpacing: 10.0,
          headingRowColor: Color(0xFFF1F7F9),
          borderRadius: BorderRadius.circular(8.0),
          addHorizontalDivider: true,
          addTopAndBottomDivider: true,
          hideDefaultHorizontalDivider: true,
          horizontalDividerColor: FlutterFlowTheme.of(context).secondaryText,
          horizontalDividerThickness: 0.2,
          addVerticalDivider: false,
        );
      },
    );
  }
}
