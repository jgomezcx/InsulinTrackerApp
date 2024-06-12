import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'track_form_widget.dart' show TrackFormWidget;
import 'package:flutter/material.dart';

class TrackFormModel extends FlutterFlowModel<TrackFormWidget> {
  ///  Local state fields for this page.

  double? carbUnits;

  double? bgUnits;

  String? glucoseMessage = 'range...';

  bool beforeBed = true;

  bool icon1Active = false;

  bool icon2Active = false;

  bool icon3Active = false;

  String? bedtimeGM = 'range...';

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Stores action output result for [Backend Call - Query Rows] action in track_form widget.
  List<UsersRow>? taskCarbInfo;
  // State field(s) for ChoiceChips widget.
  FormFieldController<List<String>>? choiceChipsValueController;
  String? get choiceChipsValue =>
      choiceChipsValueController?.value?.firstOrNull;
  set choiceChipsValue(String? val) =>
      choiceChipsValueController?.value = val != null ? [val] : [];
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode1;
  TextEditingController? textController1;
  String? Function(BuildContext, String?)? textController1Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode2;
  TextEditingController? textController2;
  String? Function(BuildContext, String?)? textController2Validator;
  // State field(s) for bedtimetext widget.
  FocusNode? bedtimetextFocusNode;
  TextEditingController? bedtimetextTextController;
  String? Function(BuildContext, String?)? bedtimetextTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    textFieldFocusNode1?.dispose();
    textController1?.dispose();

    textFieldFocusNode2?.dispose();
    textController2?.dispose();

    bedtimetextFocusNode?.dispose();
    bedtimetextTextController?.dispose();
  }
}
