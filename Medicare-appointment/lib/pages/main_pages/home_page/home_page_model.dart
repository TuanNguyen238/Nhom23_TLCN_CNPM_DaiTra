import '/backend/api_requests/api_calls.dart';
import '/components/card_home_page_intro/card_home_page_intro_widget.dart';
import '/components/card_home_page_manual/card_home_page_manual_widget.dart';
import '/components/menu_main_page/menu_main_page_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'home_page_widget.dart' show HomePageWidget;
import 'package:flutter/material.dart';

class HomePageModel extends FlutterFlowModel<HomePageWidget> {
  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - API (introspect API)] action in homePage widget.
  ApiCallResponse? introspectOutput;
  // Stores action output result for [Backend Call - API (logout API)] action in homePage widget.
  ApiCallResponse? logoutOutput;
  // Model for menuMainPage component.
  late MenuMainPageModel menuMainPageModel;
  // Model for cardHomePageIntro component.
  late CardHomePageIntroModel cardHomePageIntroModel;
  // Model for cardHomePageManual component.
  late CardHomePageManualModel cardHomePageManualModel;

  @override
  void initState(BuildContext context) {
    menuMainPageModel = createModel(context, () => MenuMainPageModel());
    cardHomePageIntroModel =
        createModel(context, () => CardHomePageIntroModel());
    cardHomePageManualModel =
        createModel(context, () => CardHomePageManualModel());
  }

  @override
  void dispose() {
    menuMainPageModel.dispose();
    cardHomePageIntroModel.dispose();
    cardHomePageManualModel.dispose();
  }
}
