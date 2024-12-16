import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_data_table.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'ffff_model.dart';
export 'ffff_model.dart';

class FfffWidget extends StatefulWidget {
  const FfffWidget({super.key});

  @override
  State<FfffWidget> createState() => _FfffWidgetState();
}

class _FfffWidgetState extends State<FfffWidget> {
  late FfffModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => FfffModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Builder(
        builder: (context) {
          final schedule = FFAppState().schedules.toList();

          return FlutterFlowDataTable<ScheduleStruct>(
            controller: _model.paginatedDataTableController,
            data: schedule,
            columnsBuilder: (onSortChanged) => [
              DataColumn2(
                label: DefaultTextStyle.merge(
                  softWrap: true,
                  child: Text(
                    'Time',
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
                    'Room Number',
                    style: FlutterFlowTheme.of(context).labelLarge.override(
                          fontFamily: 'Noto Sans',
                          letterSpacing: 0.0,
                        ),
                  ),
                ),
              ),
              DataColumn2(
                label: DefaultTextStyle.merge(
                  softWrap: true,
                  child: Text(
                    'Max Patient',
                    style: FlutterFlowTheme.of(context).labelLarge.override(
                          fontFamily: 'Noto Sans',
                          letterSpacing: 0.0,
                        ),
                  ),
                ),
              ),
              DataColumn2(
                label: DefaultTextStyle.merge(
                  softWrap: true,
                  child: Text(
                    'Current Patient',
                    style: FlutterFlowTheme.of(context).labelLarge.override(
                          fontFamily: 'Noto Sans',
                          letterSpacing: 0.0,
                        ),
                  ),
                ),
              ),
            ],
            dataRowBuilder:
                (scheduleItem, scheduleIndex, selected, onSelectChanged) =>
                    DataRow(
              color: WidgetStateProperty.all(
                scheduleIndex % 2 == 0
                    ? FlutterFlowTheme.of(context).secondaryBackground
                    : FlutterFlowTheme.of(context).secondaryBackground,
              ),
              cells: [
                Text(
                  'Hello World',
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Open Sans',
                        color: const Color(0xFF475567),
                        fontSize: 16.0,
                        letterSpacing: 0.0,
                        fontWeight: FontWeight.w500,
                      ),
                ),
                Text(
                  'Edit Column 2',
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Noto Sans',
                        color: const Color(0xFF475567),
                        letterSpacing: 0.0,
                      ),
                ),
                Text(
                  'Edit Column 3',
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Noto Sans',
                        color: const Color(0xFF475567),
                        letterSpacing: 0.0,
                      ),
                ),
                Text(
                  'Edit Column 4',
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Noto Sans',
                        color: const Color(0xFF475567),
                        letterSpacing: 0.0,
                      ),
                ),
              ].map((c) => DataCell(c)).toList(),
            ),
            paginated: true,
            selectable: false,
            hidePaginator: false,
            showFirstLastButtons: false,
            headingRowHeight: 56.0,
            dataRowHeight: 48.0,
            columnSpacing: 20.0,
            headingRowColor: const Color(0xFFF1F7F9),
            borderRadius: BorderRadius.circular(8.0),
            addHorizontalDivider: true,
            addTopAndBottomDivider: true,
            hideDefaultHorizontalDivider: true,
            horizontalDividerColor: FlutterFlowTheme.of(context).alternate,
            horizontalDividerThickness: 0.2,
            addVerticalDivider: false,
          );
        },
      ),
    );
  }
}
