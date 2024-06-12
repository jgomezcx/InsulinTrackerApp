import '/flutter_flow/flutter_flow_util.dart';
import 'first_info_page_widget.dart' show FirstInfoPageWidget;
import 'package:flutter/material.dart';

class FirstInfoPageModel extends FlutterFlowModel<FirstInfoPageWidget> {
  ///  Local state fields for this page.

  bool carbBox = true;

  bool bgBox = true;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  // State field(s) for firstname_input widget.
  FocusNode? firstnameInputFocusNode;
  TextEditingController? firstnameInputTextController;
  String? Function(BuildContext, String?)?
      firstnameInputTextControllerValidator;
  String? _firstnameInputTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Please enter an age for the patient.';
    }

    return null;
  }

  // State field(s) for lastname_input widget.
  FocusNode? lastnameInputFocusNode;
  TextEditingController? lastnameInputTextController;
  String? Function(BuildContext, String?)? lastnameInputTextControllerValidator;
  // State field(s) for Checkbox widget.
  bool? checkboxValue1;
  // State field(s) for Checkbox widget.
  bool? checkboxValue2;
  // State field(s) for carb_ratio_unit widget.
  FocusNode? carbRatioUnitFocusNode;
  TextEditingController? carbRatioUnitTextController;
  String? Function(BuildContext, String?)? carbRatioUnitTextControllerValidator;
  String? _carbRatioUnitTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Please enter the date of birth of the patient.';
    }

    return null;
  }

  // State field(s) for carbs_per_unit widget.
  FocusNode? carbsPerUnitFocusNode;
  TextEditingController? carbsPerUnitTextController;
  String? Function(BuildContext, String?)? carbsPerUnitTextControllerValidator;
  // State field(s) for target_bg widget.
  FocusNode? targetBgFocusNode;
  TextEditingController? targetBgTextController;
  String? Function(BuildContext, String?)? targetBgTextControllerValidator;
  // State field(s) for bg_unit widget.
  FocusNode? bgUnitFocusNode;
  TextEditingController? bgUnitTextController;
  String? Function(BuildContext, String?)? bgUnitTextControllerValidator;
  // State field(s) for unit_above_target widget.
  FocusNode? unitAboveTargetFocusNode;
  TextEditingController? unitAboveTargetTextController;
  String? Function(BuildContext, String?)?
      unitAboveTargetTextControllerValidator;
  // State field(s) for bedtimeTargetBG widget.
  FocusNode? bedtimeTargetBGFocusNode;
  TextEditingController? bedtimeTargetBGTextController;
  String? Function(BuildContext, String?)?
      bedtimeTargetBGTextControllerValidator;

  @override
  void initState(BuildContext context) {
    firstnameInputTextControllerValidator =
        _firstnameInputTextControllerValidator;
    carbRatioUnitTextControllerValidator =
        _carbRatioUnitTextControllerValidator;
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    firstnameInputFocusNode?.dispose();
    firstnameInputTextController?.dispose();

    lastnameInputFocusNode?.dispose();
    lastnameInputTextController?.dispose();

    carbRatioUnitFocusNode?.dispose();
    carbRatioUnitTextController?.dispose();

    carbsPerUnitFocusNode?.dispose();
    carbsPerUnitTextController?.dispose();

    targetBgFocusNode?.dispose();
    targetBgTextController?.dispose();

    bgUnitFocusNode?.dispose();
    bgUnitTextController?.dispose();

    unitAboveTargetFocusNode?.dispose();
    unitAboveTargetTextController?.dispose();

    bedtimeTargetBGFocusNode?.dispose();
    bedtimeTargetBGTextController?.dispose();
  }
}
