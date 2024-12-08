import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_data_table.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'data_table_staff_model.dart';
export 'data_table_staff_model.dart';

class DataTableStaffWidget extends StatefulWidget {
  const DataTableStaffWidget({
    super.key,
    required this.adminList,
  });

  final List<UserStruct>? adminList;

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
        final admin = widget.adminList!.toList();

        return FlutterFlowDataTable<UserStruct>(
          controller: _model.paginatedDataTableController,
          data: admin,
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
          ],
          dataRowBuilder: (adminItem, adminIndex, selected, onSelectChanged) =>
              DataRow(
            color: WidgetStateProperty.all(
              adminIndex % 2 == 0
                  ? FlutterFlowTheme.of(context).primaryText
                  : FlutterFlowTheme.of(context).primaryText,
            ),
            cells: [
              Text(
                'Hello World',
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'Open Sans',
                      color: FlutterFlowTheme.of(context).textHeading,
                      fontSize: 16.0,
                      letterSpacing: 0.0,
                      fontWeight: FontWeight.w500,
                    ),
              ),
              Text(
                '',
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'Open Sans',
                      color: FlutterFlowTheme.of(context).textHeading,
                      fontSize: 16.0,
                      letterSpacing: 0.0,
                      fontWeight: FontWeight.w500,
                    ),
              ),
              Text(
                '',
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'Open Sans',
                      color: FlutterFlowTheme.of(context).textHeading,
                      fontSize: 16.0,
                      letterSpacing: 0.0,
                      fontWeight: FontWeight.w500,
                    ),
              ),
              Text(
                '',
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'Open Sans',
                      color: FlutterFlowTheme.of(context).textHeading,
                      fontSize: 16.0,
                      letterSpacing: 0.0,
                      fontWeight: FontWeight.w500,
                    ),
              ),
              Text(
                '',
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'Open Sans',
                      color: FlutterFlowTheme.of(context).textHeading,
                      fontSize: 16.0,
                      letterSpacing: 0.0,
                      fontWeight: FontWeight.w500,
                    ),
              ),
              Text(
                '',
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'Open Sans',
                      color: FlutterFlowTheme.of(context).textHeading,
                      fontSize: 16.0,
                      letterSpacing: 0.0,
                      fontWeight: FontWeight.w500,
                    ),
              ),
              Text(
                '',
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'Open Sans',
                      color: FlutterFlowTheme.of(context).textHeading,
                      fontSize: 16.0,
                      letterSpacing: 0.0,
                      fontWeight: FontWeight.w500,
                    ),
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
          headingRowColor: const Color(0xFFF1F7F9),
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
