import '/flutter_flow/flutter_flow_choice_chips.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'package:flutter/material.dart';
import 'appointment_time_model.dart';
export 'appointment_time_model.dart';

class AppointmentTimeWidget extends StatefulWidget {
  const AppointmentTimeWidget({super.key});

  @override
  State<AppointmentTimeWidget> createState() => _AppointmentTimeWidgetState();
}

class _AppointmentTimeWidgetState extends State<AppointmentTimeWidget> {
  late AppointmentTimeModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AppointmentTimeModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Flexible(
            child: FlutterFlowChoiceChips(
              options: [
                ChipData(FFLocalizations.of(context).getText(
                  'x9m8tyh4' /* 07:00 */,
                )),
                ChipData(FFLocalizations.of(context).getText(
                  '3d1x6y2o' /* 07:30 */,
                )),
                ChipData(FFLocalizations.of(context).getText(
                  '7etpgp43' /* 08:00 */,
                )),
                ChipData(FFLocalizations.of(context).getText(
                  '2ncyyo0w' /* 08:30 */,
                )),
                ChipData(FFLocalizations.of(context).getText(
                  'eauv3df3' /* 09:00 */,
                )),
                ChipData(FFLocalizations.of(context).getText(
                  '08qqy7kh' /* 09:30 */,
                )),
                ChipData(FFLocalizations.of(context).getText(
                  'sfc56twb' /* 10:00 */,
                )),
                ChipData(FFLocalizations.of(context).getText(
                  'j18q312s' /* 10:30 */,
                )),
                ChipData(FFLocalizations.of(context).getText(
                  'i7d2a3jf' /* 11:00 */,
                )),
                ChipData(FFLocalizations.of(context).getText(
                  '4bp3tbmj' /* 11:30 */,
                )),
                ChipData(FFLocalizations.of(context).getText(
                  'g7nmfg54' /* 13:00 */,
                )),
                ChipData(FFLocalizations.of(context).getText(
                  '43y7j0hu' /* 13:30 */,
                )),
                ChipData(FFLocalizations.of(context).getText(
                  '6jngs8la' /* 14:00 */,
                )),
                ChipData(FFLocalizations.of(context).getText(
                  'cwr35426' /* 15:00 */,
                ))
              ],
              onChanged: (val) => safeSetState(
                  () => _model.choiceChipsValue = val?.firstOrNull),
              selectedChipStyle: ChipStyle(
                backgroundColor: const Color(0xFF204A9C),
                textStyle: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'Figtree',
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                      fontSize: 14.0,
                      letterSpacing: 0.0,
                      fontWeight: FontWeight.w500,
                    ),
                iconColor: const Color(0x00000000),
                iconSize: 18.0,
                elevation: 0.0,
                borderWidth: 0.5,
                borderRadius: BorderRadius.circular(8.0),
              ),
              unselectedChipStyle: ChipStyle(
                backgroundColor: Colors.transparent,
                textStyle: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'Figtree',
                      color: const Color(0xFF204A9C),
                      fontSize: 14.0,
                      letterSpacing: 0.0,
                      fontWeight: FontWeight.w500,
                    ),
                iconColor: const Color(0xFF606A85),
                iconSize: 18.0,
                elevation: 0.0,
                borderColor: const Color(0xFF204A9C),
                borderWidth: 0.5,
                borderRadius: BorderRadius.circular(8.0),
              ),
              chipSpacing: 10.0,
              rowSpacing: 10.0,
              multiselect: false,
              initialized: _model.choiceChipsValue != null,
              alignment: WrapAlignment.center,
              controller: _model.choiceChipsValueController ??=
                  FormFieldController<List<String>>(
                [
                  FFLocalizations.of(context).getText(
                    'ptdcsnb5' /* 07:00 */,
                  )
                ],
              ),
              wrapped: true,
            ),
          ),
        ],
      ),
    );
  }
}
