import '/flutter_flow/flutter_flow_util.dart';
import 'glucose_update_page_widget.dart' show GlucoseUpdatePageWidget;
import 'package:flutter/material.dart';

class GlucoseUpdatePageModel extends FlutterFlowModel<GlucoseUpdatePageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  // State field(s) for Checkbox1 widget.
  bool? checkbox1Value;
  // State field(s) for Checkbox2 widget.
  bool? checkbox2Value;
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

  @override
  void initState(BuildContext context) {
    carbRatioUnitTextControllerValidator =
        _carbRatioUnitTextControllerValidator;
  }

  @override
  void dispose() {
    unfocusNode.dispose();
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
  }
}
