import '/flutter_flow/flutter_flow_util.dart';
import 'my_account_page_widget.dart' show MyAccountPageWidget;
import 'package:flutter/material.dart';

class MyAccountPageModel extends FlutterFlowModel<MyAccountPageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for firstNameUpdate widget.
  FocusNode? firstNameUpdateFocusNode;
  TextEditingController? firstNameUpdateTextController;
  String? Function(BuildContext, String?)?
      firstNameUpdateTextControllerValidator;
  // State field(s) for lastNameUpdate widget.
  FocusNode? lastNameUpdateFocusNode;
  TextEditingController? lastNameUpdateTextController;
  String? Function(BuildContext, String?)?
      lastNameUpdateTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    firstNameUpdateFocusNode?.dispose();
    firstNameUpdateTextController?.dispose();

    lastNameUpdateFocusNode?.dispose();
    lastNameUpdateTextController?.dispose();
  }
}
