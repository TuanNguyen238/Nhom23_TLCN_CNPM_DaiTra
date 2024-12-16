import '/backend/schema/structs/index.dart';
import '/components/admin/row_action_user/row_action_user_widget.dart';
import '/flutter_flow/flutter_flow_data_table.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'data_table_user_model.dart';
export 'data_table_user_model.dart';

class DataTableUserWidget extends StatefulWidget {
  const DataTableUserWidget({
    super.key,
    required this.userList,
  });

  final List<UserStruct>? userList;

  @override
  State<DataTableUserWidget> createState() => _DataTableUserWidgetState();
}

class _DataTableUserWidgetState extends State<DataTableUserWidget> {
  late DataTableUserModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => DataTableUserModel());

    // On component load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      _model.userList = widget.userList!.toList().cast<UserStruct>();
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
        final user = _model.userList.toList();

        return FlutterFlowDataTable<UserStruct>(
          controller: _model.paginatedDataTableController,
          data: user,
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
                  'CMND/CCCD',
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
                      optionLabels: const ['All', 'Active', 'Inactive'],
                      onChanged: (val) async {
                        safeSetState(() => _model.dropDownValue = val);
                        _model.userList =
                            widget.userList!.toList().cast<UserStruct>();
                        safeSetState(() {});
                        if (_model.dropDownValue != 'all') {
                          _model.userList = widget.userList!
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
                      fillColor: const Color(0xFFF1F7F9),
                      elevation: 2.0,
                      borderColor: Colors.transparent,
                      borderWidth: 0.0,
                      borderRadius: 8.0,
                      margin:
                          const EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 12.0, 0.0),
                      hidesUnderline: true,
                      isOverButton: false,
                      isSearchable: false,
                      isMultiSelect: false,
                    ),
                  ].divide(const SizedBox(width: 5.0)),
                ),
              ),
            ),
          ],
          dataRowBuilder: (userItem, userIndex, selected, onSelectChanged) =>
              DataRow(
            color: WidgetStateProperty.all(
              userIndex % 2 == 0
                  ? FlutterFlowTheme.of(context).primaryText
                  : FlutterFlowTheme.of(context).primaryText,
            ),
            cells: [
              Text(
                userItem.id,
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'Open Sans',
                      color: const Color(0xFF475567),
                      fontSize: 16.0,
                      letterSpacing: 0.0,
                      fontWeight: FontWeight.w500,
                    ),
              ),
              Text(
                userItem.username,
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'Open Sans',
                      color: const Color(0xFF475567),
                      fontSize: 16.0,
                      letterSpacing: 0.0,
                      fontWeight: FontWeight.w500,
                    ),
              ),
              Text(
                userItem.createdAt,
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'Open Sans',
                      color: const Color(0xFF475567),
                      fontSize: 16.0,
                      letterSpacing: 0.0,
                      fontWeight: FontWeight.w500,
                    ),
              ),
              Text(
                userItem.phoneNumber,
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'Open Sans',
                      color: const Color(0xFF475567),
                      fontSize: 16.0,
                      letterSpacing: 0.0,
                      fontWeight: FontWeight.w500,
                    ),
              ),
              Text(
                userItem.email,
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'Open Sans',
                      color: const Color(0xFF475567),
                      fontSize: 16.0,
                      letterSpacing: 0.0,
                      fontWeight: FontWeight.w500,
                    ),
              ),
              Text(
                userItem.identifyCard,
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'Open Sans',
                      color: const Color(0xFF475567),
                      fontSize: 16.0,
                      letterSpacing: 0.0,
                      fontWeight: FontWeight.w500,
                    ),
              ),
              Text(
                userItem.role.name,
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'Open Sans',
                      color: const Color(0xFF475567),
                      fontSize: 16.0,
                      letterSpacing: 0.0,
                      fontWeight: FontWeight.w500,
                    ),
              ),
              RowActionUserWidget(
                key: Key('Keyznx_${userIndex}_of_${user.length}'),
                phoneNumber: userItem.phoneNumber,
                status: userItem.status,
              ),
            ].map((c) => DataCell(c)).toList(),
          ),
          paginated: true,
          selectable: false,
          hidePaginator: false,
          showFirstLastButtons: false,
          headingRowHeight: 60.0,
          dataRowHeight: 80.0,
          columnSpacing: 8.0,
          headingRowColor: const Color(0xFFF1F7F9),
          borderRadius: BorderRadius.circular(14.0),
          addHorizontalDivider: true,
          addTopAndBottomDivider: true,
          hideDefaultHorizontalDivider: true,
          horizontalDividerColor: FlutterFlowTheme.of(context).alternate,
          horizontalDividerThickness: 0.2,
          addVerticalDivider: false,
        );
      },
    );
  }
}
