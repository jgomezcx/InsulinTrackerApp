import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'dart:async';
import 'home_widget.dart' show HomeWidget;
import 'package:tutorial_coach_mark/tutorial_coach_mark.dart'
    show TutorialCoachMark;
import 'package:flutter/material.dart';

class HomeModel extends FlutterFlowModel<HomeWidget> {
  ///  Local state fields for this page.

  bool searchDate = true;

  String? dateSearch;

  int? showdates;

  int loop1 = 0;

  DateTime? searchDateHome;

  bool searchButtonClicked = true;

  bool searchContainer = true;

  List<String> mealList = [];
  void addToMealList(String item) => mealList.add(item);
  void removeFromMealList(String item) => mealList.remove(item);
  void removeAtIndexFromMealList(int index) => mealList.removeAt(index);
  void insertAtIndexInMealList(int index, String item) =>
      mealList.insert(index, item);
  void updateMealListAtIndex(int index, Function(String) updateFn) =>
      mealList[index] = updateFn(mealList[index]);

  ///  State fields for stateful widgets in this page.

  TutorialCoachMark? newUserController;
  final unfocusNode = FocusNode();
  // Stores action output result for [Backend Call - Query Rows] action in home widget.
  List<DailyLogsRow>? dailyLogOnLoad;
  // Stores action output result for [Backend Call - Query Rows] action in home widget.
  List<UsersRow>? walkthroughBackendCall;
  Completer<List<UsersRow>>? requestCompleter3;
  // State field(s) for MouseRegion1 widget.
  bool mouseRegion1Hovered = false;
  // State field(s) for MouseRegion2 widget.
  bool mouseRegion2Hovered = false;
  // State field(s) for MouseRegion3 widget.
  bool mouseRegion3Hovered = false;
  // State field(s) for MouseRegion4 widget.
  bool mouseRegion4Hovered = false;
  // State field(s) for MouseRegionL widget.
  bool mouseRegionLHovered = false;
  // State field(s) for DropDown widget.
  String? dropDownValue;
  FormFieldController<String>? dropDownValueController;
  DateTime? datePicked;
  Completer<List<DailyLogsRow>>? requestCompleter2;
  // Stores action output result for [Backend Call - Query Rows] action in Button widget.
  List<UsersRow>? userRowQuery;
  // State field(s) for ChoiceChips widget.
  FormFieldController<List<String>>? choiceChipsValueController;
  String? get choiceChipsValue =>
      choiceChipsValueController?.value?.firstOrNull;
  set choiceChipsValue(String? val) =>
      choiceChipsValueController?.value = val != null ? [val] : [];
  Completer<List<DailyLogsRow>>? requestCompleter1;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    newUserController?.finish();
    unfocusNode.dispose();
  }

  /// Additional helper methods.
  Future waitForRequestCompleted3({
    double minWait = 0,
    double maxWait = double.infinity,
  }) async {
    final stopwatch = Stopwatch()..start();
    while (true) {
      await Future.delayed(const Duration(milliseconds: 50));
      final timeElapsed = stopwatch.elapsedMilliseconds;
      final requestComplete = requestCompleter3?.isCompleted ?? false;
      if (timeElapsed > maxWait || (requestComplete && timeElapsed > minWait)) {
        break;
      }
    }
  }

  Future waitForRequestCompleted2({
    double minWait = 0,
    double maxWait = double.infinity,
  }) async {
    final stopwatch = Stopwatch()..start();
    while (true) {
      await Future.delayed(const Duration(milliseconds: 50));
      final timeElapsed = stopwatch.elapsedMilliseconds;
      final requestComplete = requestCompleter2?.isCompleted ?? false;
      if (timeElapsed > maxWait || (requestComplete && timeElapsed > minWait)) {
        break;
      }
    }
  }

  Future waitForRequestCompleted1({
    double minWait = 0,
    double maxWait = double.infinity,
  }) async {
    final stopwatch = Stopwatch()..start();
    while (true) {
      await Future.delayed(const Duration(milliseconds: 50));
      final timeElapsed = stopwatch.elapsedMilliseconds;
      final requestComplete = requestCompleter1?.isCompleted ?? false;
      if (timeElapsed > maxWait || (requestComplete && timeElapsed > minWait)) {
        break;
      }
    }
  }
}
