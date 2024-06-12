import '/auth/supabase_auth/auth_util.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_choice_chips.dart';
import '/flutter_flow/flutter_flow_expanded_image_view.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:flutter_html/flutter_html.dart';
import 'track_form_model.dart';
export 'track_form_model.dart';

class TrackFormWidget extends StatefulWidget {
  const TrackFormWidget({
    super.key,
    this.carbsCheck,
  });

  final bool? carbsCheck;

  @override
  State<TrackFormWidget> createState() => _TrackFormWidgetState();
}

class _TrackFormWidgetState extends State<TrackFormWidget> {
  late TrackFormModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => TrackFormModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      _model.taskCarbInfo = await UsersTable().queryRows(
        queryFn: (q) => q.eq(
          'id',
          currentUserUid,
        ),
      );
      _model.beforeBed = false;
      _model.icon1Active = false;
      _model.icon2Active = false;
      setState(() {});
    });

    _model.textController1 ??= TextEditingController();
    _model.textFieldFocusNode1 ??= FocusNode();
    _model.textFieldFocusNode1!.addListener(() => setState(() {}));
    _model.textController2 ??= TextEditingController();
    _model.textFieldFocusNode2 ??= FocusNode();
    _model.textFieldFocusNode2!.addListener(() => setState(() {}));
    _model.bedtimetextTextController ??= TextEditingController();
    _model.bedtimetextFocusNode ??= FocusNode();
    _model.bedtimetextFocusNode!.addListener(() => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
        drawer: Drawer(
          elevation: 16.0,
          child: Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(0.0, 90.0, 0.0, 0.0),
            child: ListView(
              padding: EdgeInsets.zero,
              scrollDirection: Axis.vertical,
              children: [
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(
                            24.0, 0.0, 24.0, 0.0),
                        child: Text(
                          'School Food Menu',
                          style: FlutterFlowTheme.of(context)
                              .headlineMedium
                              .override(
                                fontFamily: 'Outfit',
                                letterSpacing: 0.0,
                              ),
                        ),
                      ),
                      Flexible(
                        child: Align(
                          alignment: const AlignmentDirectional(1.0, 0.0),
                          child: Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 25.0, 0.0),
                            child: FlutterFlowIconButton(
                              borderColor:
                                  FlutterFlowTheme.of(context).secondaryText,
                              borderRadius: 5.0,
                              borderWidth: 1.0,
                              buttonSize: 40.0,
                              icon: Icon(
                                Icons.arrow_back_rounded,
                                color: FlutterFlowTheme.of(context).primaryText,
                                size: 24.0,
                              ),
                              onPressed: () async {
                                if (scaffoldKey.currentState!.isDrawerOpen ||
                                    scaffoldKey.currentState!.isEndDrawerOpen) {
                                  Navigator.pop(context);
                                }
                              },
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Divider(
                  thickness: 1.0,
                  color: FlutterFlowTheme.of(context).accent4,
                ),
                Html(
                  data:
                      '  <style>\n    body {\n      font-family: Arial, sans-serif;\n    }\n    .menu-section {\n      margin-bottom: 20px;\n    }\n    .menu-section h2 {\n      background-color: cyan;\n      padding: 5px;\n      margin: 0;\n    }\n    .item {\n      margin: 10px 0;\n    }\n    .item-name {\n      font-weight: bold;\n    }\n    .item-details {\n      margin-left: 20px;\n    }\n  </style>\n</head>\n<body>\n  <div class=\"menu-section\">\n    <h2>Served Daily</h2>\n    <div class=\"item\">\n      <div class=\"item-name\">Hot & Spicy Chicken Sandwich</div>\n      <div class=\"item-details\">Carbohydrates: 37g</div>\n    </div>\n    <div class=\"item\">\n      <div class=\"item-name\">Dominos Pepperoni Pizza Slice</div>\n      <div class=\"item-details\">Carbohydrates: 28g</div>\n    </div>\n    <div class=\"item\">\n      <div class=\"item-name\">Protein Pack</div>\n      <div class=\"item-details\">Carbohydrates: 60g</div>\n    </div>\n    <div class=\"item\">\n      <div class=\"item-name\">Garden Salad With Cheese</div>\n      <div class=\"item-details\">Carbohydrates: 42.3g</div>\n    </div>\n    <div class=\"item\">\n      <div class=\"item-name\">Burrito Chile Relleno</div>\n      <div class=\"item-details\">Carbohydrates: 52.7g</div>\n    </div>\n  </div>\n\n  <div class=\"menu-section\">\n    <h2>Monday Special</h2>\n    <div class=\"item\">\n      <div class=\"item-name\">100% Beef Patty on Hamburger Bun</div>\n      <div class=\"item-details\">Carbohydrates: 28.2g</div>\n    </div>\n    <div class=\"item\">\n      <div class=\"item-name\">Warm Croissant Ham and Cheese</div>\n      <div class=\"item-details\">Carbohydrates: 32g</div>\n    </div>\n    <div class=\"item\">\n      <div class=\"item-name\">Chicken and Biscuit</div>\n      <div class=\"item-details\">Carbohydrates: 36g</div>\n    </div>\n    <div class=\"item\">\n      <div class=\"item-name\">Chicken Buffalo Stuffed Pocket</div>\n      <div class=\"item-details\">Carbohydrates: 31g</div>\n    </div>\n  </div>\n\n  <div class=\"menu-section\">\n    <h2>Tuesday Special</h2>\n    <div class=\"item\">\n      <div class=\"item-name\">Cheeseburger Sliders</div>\n      <div class=\"item-details\">Carbohydrates: 20g</div>\n    </div>\n    <div class=\"item\">\n      <div class=\"item-name\">Corn Dog</div>\n      <div class=\"item-details\">Carbohydrates: 30g</div>\n    </div>\n    <div class=\"item\">\n      <div class=\"item-name\">Big Daddy Fiestada Pocket</div>\n      <div class=\"item-details\">Carbohydrates: 31g</div>\n    </div>\n    <div class=\"item\">\n      <div class=\"item-name\">Fully Cooked Chicken Wings With Rice</div>\n      <div class=\"item-details\">Carbohydrates: 28g</div>\n    </div>\n  </div>\n\n  <div class=\"menu-section\">\n    <h2>Wednesday Specials</h2>\n    <div class=\"item\">\n      <div class=\"item-name\">Western Burger</div>\n      <div class=\"item-details\">Carbohydrates: 50.7g</div>\n    </div>\n    <div class=\"item\">\n      <div class=\"item-name\">Chicken Club & Cheese Sandwich</div>\n      <div class=\"item-details\">Carbohydrates: 28.4g</div>\n    </div>\n    <div class=\"item\">\n      <div class=\"item-name\">Chicken and Biscuit</div>\n      <div class=\"item-details\">Carbohydrates: 36g</div>\n    </div>\n    <div class=\"item\">\n      <div class=\"item-name\">Big Daddy Pepperoni Stuffed Sandwich</div>\n      <div class=\"item-details\">Carbohydrates: 31g</div>\n    </div>\n  </div>\n\n  <div class=\"menu-section\">\n    <h2>Thursday Special</h2>\n    <div class=\"item\">\n      <div class=\"item-name\">Cheeseburger Sliders</div>\n      <div class=\"item-details\">Carbohydrates: 20g</div>\n    </div>\n    <div class=\"item\">\n      <div class=\"item-name\">Taco Pocket</div>\n      <div class=\"item-details\">Carbohydrates: 40g</div>\n    </div>\n    <div class=\"item\">\n      <div class=\"item-name\">Hot Dog On A Bun</div>\n      <div class=\"item-details\">Carbohydrates: 40g</div>\n    </div>\n    <div class=\"item\">\n      <div class=\"item-name\">Fully Cooked Chicken Wings With Rice</div>\n      <div class=\"item-details\">Carbohydrates: 28g</div>\n    </div>\n  </div>\n\n  <div class=\"menu-section\">\n    <h2>Friday Special</h2>\n    <div class=\"item\">\n      <div class=\"item-name\">100% Beef Patty on Hamburger Bun</div>\n      <div class=\"item-details\">Carbohydrates: 28.2g</div>\n    </div>\n    <div class=\"item\">\n      <div class=\"item-name\">Popcorn Chicken Bowl</div>\n      <div class=\"item-details\">Carbohydrates: 55g</div>\n    </div>\n    <div class=\"item\">\n      <div class=\"item-name\">Big Daddy Fiestada Pocket</div>\n      <div class=\"item-details\">Carbohydrates: 31g</div>\n    </div>\n    <div class=\"item\">\n      <div class=\"item-name\">Chili Cheese Dog</div>\n      <div class=\"item-details\">Carbohydrates: 32.6g</div>\n    </div>\n  </div>\n\n  <div class=\"menu-section\">\n    <h2>Drinks</h2>\n    <div class=\"item\">\n      <div class=\"item-name\">White Milk</div>\n      <div class=\"item-details\">Portion Size: Cup, Carbohydrates: 16g</div>\n    </div>\n    <div class=\"item\">\n      <div class=\"item-name\">Chocolate Milk</div>\n      <div class=\"item-details\">Portion Size: Cup, Carbohydrates: 20g</div>\n    </div>\n    <div class=\"item\">\n      <div class=\"item-name\">Fruit Juice</div>\n      <div class=\"item-details\">Portion Size: Cup, Carbohydrates: 14g</div>\n    </div>\n  </div>\n\n  <div class=\"menu-section\">\n    <h2>Fruits</h2>\n    <div class=\"item\">\n      <div class=\"item-name\">Apples</div>\n      <div class=\"item-details\">Portion Size: Cup, Carbohydrates: 25.2g</div>\n    </div>\n    <div class=\"item\">\n      <div class=\"item-name\">Apricots</div>\n      <div class=\"item-details\">Portion Size: Cup, Carbohydrates: 20.9g</div>\n    </div>\n    <div class=\"item\">\n      <div class=\"item-name\">Banana</div>\n      <div class=\"item-details\">Portion Size: Banana, Carbohydrates: 31.1g</div>\n    </div>\n    <div class=\"item\">\n      <div class=\"item-name\">Fresh pears</div>\n      <div class=\"item-details\">Portion Size: Each, Carbohydrates: 27.2g</div>\n    </div>\n    <div class=\"item\">\n      <div class=\"item-name\">Mixed fruit</div>\n      <div class=\"item-details\">Portion Size: Cup, Carbohydrates: 14.1g</div>\n    </div>\n    <div class=\"item\">\n      <div class=\"item-name\">Oranges</div>\n      <div class=\"item-details\">Portion Size: Each, Carbohydrates: 15.4g</div>\n    </div>\n    <div class=\"item\">\n      <div class=\"item-name\">Peaches</div>\n      <div class=\"item-details\">Portion Size: Cup, Carbohydrates: 14.5g</div>\n    </div>\n    <div class=\"item\">\n      <div class=\"item-name\">Pineapple</div>\n      <div class=\"item-details\">Portion Size: Cup, Carbohydrates: 19.6g</div>\n    </div>\n  </div>\n\n  <div class=\"menu-section\">\n    <h2>Vegetables</h2>\n    <div class=\"item\">\n      <div class=\"item-name\">Carrot sticks</div>\n      <div class=\"item-details\">Portion Size: Cup, Carbohydrates: 8.5g</div>\n    </div>\n    <div class=\"item\">\n      <div class=\"item-name\">Corn</div>\n      <div class=\"item-details\">Portion Size: Cup, Carbohydrates: 7.8g</div>\n    </div>\n    <div class=\"item\">\n      <div class=\"item-name\">Firecracker green beans</div>\n      <div class=\"item-details\">Carbohydrates: 8g</div>\n    </div>\n    <div class=\"item\">\n      <div class=\"item-name\">Green salad</div>\n      <div class=\"item-details\">Portion Size: Cup, Carbohydrates: 3g</div>\n    </div>\n    <div class=\"item\">\n      <div class=\"item-name\">Lettuce, iceberg</div>\n      <div class=\"item-details\">Carbohydrates: 2.2g</div>\n    </div>\n    <div class=\"item\">\n      <div class=\"item-name\">Peas</div>\n      <div class=\"item-details\">Portion Size: Cup, Carbohydrates: 7.4g</div>\n    </div>\n    <div class=\"item\">\n      <div class=\"item-name\">Pickle chips</div>\n      <div class=\"item-details\">Carbohydrates: 0.4g</div>\n    </div>\n    <div class=\"item\">\n      <div class=\"item-name\">Refried pinto beans</div>\n      <div class=\"item-details\">Carbohydrates: 63.3g</div>\n    </div>\n    <div class=\"item\">\n      <div class=\"item-name\">Salsa</div>\n      <div class=\"item-details\">Portion Size: Cup, Carbohydrates: 8.7g</div>\n    </div>\n    <div class=\"item\">\n      <div class=\"item-name\">Street corn</div>\n      <div class=\"item-details\">Carbohydrates: 15.7g</div>\n    </div>\n  </div>\n\n',
                  onLinkTap: (url, _, __, ___) => launchURL(url!),
                ),
              ],
            ),
          ),
        ),
        appBar: AppBar(
          backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
          automaticallyImplyLeading: false,
          title: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Create Task',
                style: FlutterFlowTheme.of(context).headlineMedium.override(
                      fontFamily: 'Outfit',
                      letterSpacing: 0.0,
                    ),
              ),
              Text(
                'Please fill out the form below to continue.',
                style: FlutterFlowTheme.of(context).labelMedium.override(
                      fontFamily: 'Readex Pro',
                      letterSpacing: 0.0,
                    ),
              ),
            ].divide(const SizedBox(height: 4.0)),
          ),
          actions: [
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(0.0, 8.0, 12.0, 8.0),
              child: FlutterFlowIconButton(
                borderColor: FlutterFlowTheme.of(context).alternate,
                borderRadius: 12.0,
                borderWidth: 1.0,
                buttonSize: 40.0,
                fillColor: FlutterFlowTheme.of(context).secondaryBackground,
                icon: Icon(
                  Icons.close_rounded,
                  color: FlutterFlowTheme.of(context).primaryText,
                  size: 24.0,
                ),
                onPressed: () async {
                  context.safePop();
                },
              ),
            ),
          ],
          centerTitle: false,
          elevation: 0.0,
        ),
        body: SafeArea(
          top: true,
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Align(
                  alignment: const AlignmentDirectional(-1.0, 0.0),
                  child: Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(10.0, 10.0, 0.0, 0.0),
                    child: FFButtonWidget(
                      onPressed: () async {
                        scaffoldKey.currentState!.openDrawer();
                      },
                      text: 'more carb info',
                      options: FFButtonOptions(
                        width: 140.0,
                        height: 30.0,
                        padding: const EdgeInsetsDirectional.fromSTEB(
                            24.0, 0.0, 24.0, 0.0),
                        iconPadding: const EdgeInsets.all(0.0),
                        color: FlutterFlowTheme.of(context).secondaryText,
                        textStyle:
                            FlutterFlowTheme.of(context).titleSmall.override(
                                  fontFamily: 'Readex Pro',
                                  color: Colors.white,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.w300,
                                ),
                        elevation: 3.0,
                        borderSide: const BorderSide(
                          color: Colors.transparent,
                          width: 1.0,
                        ),
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: FlutterFlowChoiceChips(
                    options: const [
                      ChipData('breakfast'),
                      ChipData('lunch'),
                      ChipData('dinner'),
                      ChipData('before bed')
                    ],
                    onChanged: (val) async {
                      setState(
                          () => _model.choiceChipsValue = val?.firstOrNull);
                      if (_model.choiceChipsValue == 'before bed') {
                        _model.beforeBed = true;
                        setState(() {});
                      } else {
                        _model.beforeBed = false;
                        setState(() {});
                      }
                    },
                    selectedChipStyle: ChipStyle(
                      backgroundColor: FlutterFlowTheme.of(context).secondary,
                      textStyle:
                          FlutterFlowTheme.of(context).bodyMedium.override(
                                fontFamily: 'Readex Pro',
                                color: FlutterFlowTheme.of(context).primaryText,
                                letterSpacing: 0.0,
                              ),
                      iconColor: FlutterFlowTheme.of(context).primaryText,
                      iconSize: 18.0,
                      elevation: 4.0,
                      borderRadius: BorderRadius.circular(16.0),
                    ),
                    unselectedChipStyle: ChipStyle(
                      backgroundColor: FlutterFlowTheme.of(context).alternate,
                      textStyle: FlutterFlowTheme.of(context)
                          .bodyMedium
                          .override(
                            fontFamily: 'Readex Pro',
                            color: FlutterFlowTheme.of(context).secondaryText,
                            letterSpacing: 0.0,
                          ),
                      iconColor: FlutterFlowTheme.of(context).secondaryText,
                      iconSize: 18.0,
                      elevation: 0.0,
                      borderRadius: BorderRadius.circular(16.0),
                    ),
                    chipSpacing: 12.0,
                    rowSpacing: 12.0,
                    multiselect: false,
                    initialized: _model.choiceChipsValue != null,
                    alignment: WrapAlignment.start,
                    controller: _model.choiceChipsValueController ??=
                        FormFieldController<List<String>>(
                      ['breakfast'],
                    ),
                    wrapped: true,
                  ),
                ),
                if (!_model.beforeBed)
                  Container(
                    width: double.infinity,
                    height: MediaQuery.sizeOf(context).height * 0.7,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        if (widget.carbsCheck ?? true)
                          Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 5.0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(10.0),
                                      child: InkWell(
                                        splashColor: Colors.transparent,
                                        focusColor: Colors.transparent,
                                        hoverColor: Colors.transparent,
                                        highlightColor: Colors.transparent,
                                        onTap: () async {
                                          _model.icon1Active =
                                              !_model.icon1Active;
                                          setState(() {});
                                        },
                                        child: Icon(
                                          Icons.info_outline,
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryText,
                                          size: 18.0,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          15.0, 0.0, 0.0, 0.0),
                                      child: Text(
                                        'Carbohydrates',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyLarge
                                            .override(
                                              fontFamily: 'Readex Pro',
                                              letterSpacing: 0.0,
                                              fontWeight: FontWeight.w600,
                                            ),
                                      ),
                                    ),
                                    Expanded(
                                      child: Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            20.0, 0.0, 20.0, 0.0),
                                        child: TextFormField(
                                          controller: _model.textController1,
                                          focusNode: _model.textFieldFocusNode1,
                                          onChanged: (_) =>
                                              EasyDebounce.debounce(
                                            '_model.textController1',
                                            const Duration(milliseconds: 200),
                                            () async {
                                              _model.carbUnits = functions
                                                  .carbohydrateInsulinUnitsToTake(
                                                      _model.taskCarbInfo?.first
                                                          .carbohydrateRatioUnit,
                                                      _model.taskCarbInfo?.first
                                                          .carbohydrateRatioCarb
                                                          ?.toDouble(),
                                                      int.tryParse(_model
                                                          .textController1
                                                          .text));
                                              setState(() {});
                                            },
                                          ),
                                          autofocus: true,
                                          obscureText: false,
                                          decoration: InputDecoration(
                                            labelStyle:
                                                FlutterFlowTheme.of(context)
                                                    .labelMedium
                                                    .override(
                                                      fontFamily: 'Readex Pro',
                                                      letterSpacing: 0.0,
                                                    ),
                                            hintText: '  EX:150',
                                            hintStyle:
                                                FlutterFlowTheme.of(context)
                                                    .labelMedium
                                                    .override(
                                                      fontFamily: 'Readex Pro',
                                                      letterSpacing: 2.0,
                                                    ),
                                            enabledBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .alternate,
                                                width: 2.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(8.0),
                                            ),
                                            focusedBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primary,
                                                width: 2.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(8.0),
                                            ),
                                            errorBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .error,
                                                width: 2.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(8.0),
                                            ),
                                            focusedErrorBorder:
                                                OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .error,
                                                width: 2.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(8.0),
                                            ),
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Readex Pro',
                                                letterSpacing: 0.0,
                                              ),
                                          maxLength: 3,
                                          maxLengthEnforcement:
                                              MaxLengthEnforcement.enforced,
                                          buildCounter: (context,
                                                  {required currentLength,
                                                  required isFocused,
                                                  maxLength}) =>
                                              null,
                                          keyboardType: const TextInputType
                                              .numberWithOptions(decimal: true),
                                          validator: _model
                                              .textController1Validator
                                              .asValidator(context),
                                          inputFormatters: [
                                            FilteringTextInputFormatter.allow(
                                                RegExp('[0-9]'))
                                          ],
                                        ),
                                      ),
                                    ),
                                  ].divide(const SizedBox(width: 0.0)),
                                ),
                              ),
                              Container(
                                width: MediaQuery.sizeOf(context).width * 0.9,
                                height: 74.0,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                  border: Border.all(
                                    color: FlutterFlowTheme.of(context)
                                        .primaryText,
                                  ),
                                ),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Align(
                                      alignment:
                                          const AlignmentDirectional(0.0, -1.0),
                                      child: Text(
                                        'Carb Insulin Units',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyLarge
                                            .override(
                                              fontFamily: 'Readex Pro',
                                              letterSpacing: 0.0,
                                            ),
                                      ),
                                    ),
                                    Align(
                                      alignment:
                                          const AlignmentDirectional(0.0, -1.0),
                                      child: Text(
                                        valueOrDefault<String>(
                                          _model.carbUnits?.toString(),
                                          '0',
                                        ),
                                        style: FlutterFlowTheme.of(context)
                                            .bodyLarge
                                            .override(
                                              fontFamily: 'Readex Pro',
                                              letterSpacing: 0.0,
                                            ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        if (_model.icon1Active)
                          Container(
                            width: MediaQuery.sizeOf(context).width * 0.95,
                            height: 50.0,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                              border: Border.all(
                                color: FlutterFlowTheme.of(context).alternate,
                              ),
                            ),
                            child: InkWell(
                              splashColor: Colors.transparent,
                              focusColor: Colors.transparent,
                              hoverColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onTap: () async {
                                await Navigator.push(
                                  context,
                                  PageTransition(
                                    type: PageTransitionType.fade,
                                    child: FlutterFlowExpandedImageView(
                                      image: Image.asset(
                                        'assets/images/Screenshot_2024-06-09_232848.png',
                                        fit: BoxFit.contain,
                                      ),
                                      allowRotation: false,
                                      tag: 'imageTag1',
                                      useHeroAnimation: true,
                                    ),
                                  ),
                                );
                              },
                              child: Hero(
                                tag: 'imageTag1',
                                transitionOnUserGestures: true,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(5.0),
                                  child: Image.asset(
                                    'assets/images/Screenshot_2024-06-09_232848.png',
                                    width: double.infinity,
                                    height: 200.0,
                                    fit: BoxFit.contain,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        Divider(
                          thickness: 1.0,
                          color: FlutterFlowTheme.of(context).alternate,
                        ),
                        Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  0.0, 5.0, 0.0, 5.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: InkWell(
                                      splashColor: Colors.transparent,
                                      focusColor: Colors.transparent,
                                      hoverColor: Colors.transparent,
                                      highlightColor: Colors.transparent,
                                      onTap: () async {
                                        _model.icon2Active =
                                            !_model.icon2Active;
                                        setState(() {});
                                      },
                                      child: Icon(
                                        Icons.info_outline,
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryText,
                                        size: 18.0,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        15.0, 0.0, 0.0, 0.0),
                                    child: Text(
                                      'Blood Glucose',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyLarge
                                          .override(
                                            fontFamily: 'Readex Pro',
                                            letterSpacing: 0.0,
                                            fontWeight: FontWeight.w600,
                                          ),
                                    ),
                                  ),
                                  Expanded(
                                    child: Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          20.0, 0.0, 20.0, 0.0),
                                      child: TextFormField(
                                        controller: _model.textController2,
                                        focusNode: _model.textFieldFocusNode2,
                                        onChanged: (_) => EasyDebounce.debounce(
                                          '_model.textController2',
                                          const Duration(milliseconds: 200),
                                          () async {
                                            _model.bgUnits = functions
                                                .bloodGlucoseInsulinUnitsToTake(
                                                    _model.taskCarbInfo?.first
                                                        .targetBg,
                                                    _model.taskCarbInfo?.first
                                                        .unitAboveTarget,
                                                    int.tryParse(_model
                                                        .textController2.text),
                                                    _model.taskCarbInfo!.first
                                                        .bGUnit!);
                                            setState(() {});
                                            _model.glucoseMessage =
                                                functions.glucoseControlMessage(
                                                    int.tryParse(_model
                                                        .textController2.text));
                                            setState(() {});
                                          },
                                        ),
                                        autofocus: true,
                                        obscureText: false,
                                        decoration: InputDecoration(
                                          labelStyle:
                                              FlutterFlowTheme.of(context)
                                                  .labelMedium
                                                  .override(
                                                    fontFamily: 'Readex Pro',
                                                    letterSpacing: 0.0,
                                                  ),
                                          hintText: '  EX: 180',
                                          hintStyle:
                                              FlutterFlowTheme.of(context)
                                                  .labelMedium
                                                  .override(
                                                    fontFamily: 'Readex Pro',
                                                    letterSpacing: 2.0,
                                                  ),
                                          enabledBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .alternate,
                                              width: 2.0,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(8.0),
                                          ),
                                          focusedBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primary,
                                              width: 2.0,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(8.0),
                                          ),
                                          errorBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .error,
                                              width: 2.0,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(8.0),
                                          ),
                                          focusedErrorBorder:
                                              OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .error,
                                              width: 2.0,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(8.0),
                                          ),
                                        ),
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Readex Pro',
                                              letterSpacing: 0.0,
                                            ),
                                        maxLength: 3,
                                        maxLengthEnforcement:
                                            MaxLengthEnforcement.enforced,
                                        buildCounter: (context,
                                                {required currentLength,
                                                required isFocused,
                                                maxLength}) =>
                                            null,
                                        keyboardType: const TextInputType
                                            .numberWithOptions(decimal: true),
                                        validator: _model
                                            .textController2Validator
                                            .asValidator(context),
                                        inputFormatters: [
                                          FilteringTextInputFormatter.allow(
                                              RegExp('[0-9]'))
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              width: MediaQuery.sizeOf(context).width * 0.9,
                              height: 129.0,
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                                border: Border.all(
                                  color:
                                      FlutterFlowTheme.of(context).primaryText,
                                ),
                              ),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Text(
                                        'BG Insulin Units',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyLarge
                                            .override(
                                              fontFamily: 'Readex Pro',
                                              letterSpacing: 0.0,
                                            ),
                                      ),
                                      Text(
                                        valueOrDefault<String>(
                                          _model.bgUnits.toString(),
                                          '0',
                                        ),
                                        style: FlutterFlowTheme.of(context)
                                            .bodyLarge
                                            .override(
                                              fontFamily: 'Readex Pro',
                                              letterSpacing: 0.0,
                                            ),
                                      ),
                                      Divider(
                                        thickness: 1.0,
                                        color: FlutterFlowTheme.of(context)
                                            .alternate,
                                      ),
                                      Text(
                                        'Glucose Control',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyLarge
                                            .override(
                                              fontFamily: 'Readex Pro',
                                              letterSpacing: 0.0,
                                            ),
                                      ),
                                    ],
                                  ),
                                  Container(
                                    width: 318.0,
                                    height: 36.0,
                                    decoration: BoxDecoration(
                                      color: () {
                                        if (_model.glucoseMessage ==
                                            'Glucose within range') {
                                          return FlutterFlowTheme.of(context)
                                              .success;
                                        } else if (_model.glucoseMessage ==
                                            'Treat low') {
                                          return FlutterFlowTheme.of(context)
                                              .warning;
                                        } else if (_model.glucoseMessage ==
                                            'Check ketones!') {
                                          return FlutterFlowTheme.of(context)
                                              .error;
                                        } else {
                                          return FlutterFlowTheme.of(context)
                                              .primaryBackground;
                                        }
                                      }(),
                                      borderRadius: BorderRadius.circular(0.0),
                                      border: Border.all(
                                        color: FlutterFlowTheme.of(context)
                                            .primaryBackground,
                                      ),
                                    ),
                                    child: Align(
                                      alignment: const AlignmentDirectional(0.0, 0.0),
                                      child: Text(
                                        valueOrDefault<String>(
                                          _model.glucoseMessage,
                                          'value',
                                        ),
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Readex Pro',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryText,
                                              letterSpacing: 0.0,
                                            ),
                                      ),
                                    ),
                                  ),
                                  Text(
                                    'Low BG is set 70>          high BG is set <300',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Readex Pro',
                                          color: const Color(0xFFC7C8CF),
                                          fontSize: 9.5,
                                          letterSpacing: 0.0,
                                        ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        if (_model.icon2Active)
                          Container(
                            width: MediaQuery.sizeOf(context).width * 0.95,
                            height: 50.0,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                              border: Border.all(
                                color: FlutterFlowTheme.of(context).alternate,
                              ),
                            ),
                            child: InkWell(
                              splashColor: Colors.transparent,
                              focusColor: Colors.transparent,
                              hoverColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onTap: () async {
                                await Navigator.push(
                                  context,
                                  PageTransition(
                                    type: PageTransitionType.fade,
                                    child: FlutterFlowExpandedImageView(
                                      image: Image.asset(
                                        'assets/images/Screenshot_2024-06-09_231756.png',
                                        fit: BoxFit.contain,
                                      ),
                                      allowRotation: false,
                                      tag: 'imageTag2',
                                      useHeroAnimation: true,
                                    ),
                                  ),
                                );
                              },
                              child: Hero(
                                tag: 'imageTag2',
                                transitionOnUserGestures: true,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(5.0),
                                  child: Image.asset(
                                    'assets/images/Screenshot_2024-06-09_231756.png',
                                    width: 283.0,
                                    height: 200.0,
                                    fit: BoxFit.contain,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  20.0, 5.0, 20.0, 0.0),
                              child: Text(
                                'total units to be administered',
                                style: FlutterFlowTheme.of(context)
                                    .bodyLarge
                                    .override(
                                      fontFamily: 'Readex Pro',
                                      fontSize: 18.0,
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.w600,
                                    ),
                              ),
                            ),
                            Text(
                              valueOrDefault<String>(
                                functions
                                    .totalInsulinUnits(
                                        _model.carbUnits, _model.bgUnits)
                                    .toString(),
                                '0',
                              ),
                              style: FlutterFlowTheme.of(context)
                                  .titleLarge
                                  .override(
                                    fontFamily: 'Outfit',
                                    letterSpacing: 0.0,
                                  ),
                            ),
                            Divider(
                              thickness: 1.0,
                              color: FlutterFlowTheme.of(context).alternate,
                            ),
                            Divider(
                              height: 50.0,
                              thickness: 1.0,
                              color: FlutterFlowTheme.of(context).accent4,
                            ),
                            FFButtonWidget(
                              onPressed: () async {
                                await DailyLogsTable().insert({
                                  'user_id': currentUserUid,
                                  'date': supaSerialize<DateTime>(functions
                                      .parsedDateTime(getCurrentTimestamp)),
                                  'meal_type': _model.choiceChipsValue,
                                  'carbohydrates': double.tryParse(
                                      _model.textController1.text),
                                  'carb_insulin_units': _model.carbUnits,
                                  'blood_glucose':
                                      int.tryParse(_model.textController2.text),
                                  'blood_glucose_insulin_units': _model.bgUnits,
                                  'glucose_control': _model.glucoseMessage,
                                  'total_administered':
                                      functions.totalInsulinUnits(
                                          _model.carbUnits, _model.bgUnits),
                                });

                                context.pushNamed('home');
                              },
                              text: 'Log information!',
                              options: FFButtonOptions(
                                height: 40.0,
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    24.0, 0.0, 24.0, 0.0),
                                iconPadding: const EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 0.0),
                                color: FlutterFlowTheme.of(context).primary,
                                textStyle: FlutterFlowTheme.of(context)
                                    .titleSmall
                                    .override(
                                      fontFamily: 'Readex Pro',
                                      color: Colors.white,
                                      letterSpacing: 0.0,
                                    ),
                                elevation: 3.0,
                                borderSide: const BorderSide(
                                  color: Colors.transparent,
                                  width: 1.0,
                                ),
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                if (_model.beforeBed)
                  Container(
                    width: double.infinity,
                    height: 300.0,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 5.0, 0.0, 5.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: InkWell(
                                  splashColor: Colors.transparent,
                                  focusColor: Colors.transparent,
                                  hoverColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  onTap: () async {
                                    _model.icon3Active = !_model.icon3Active;
                                    setState(() {});
                                  },
                                  child: Icon(
                                    Icons.info_outline,
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryText,
                                    size: 18.0,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    15.0, 0.0, 0.0, 0.0),
                                child: Text(
                                  'Bedtime BG',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyLarge
                                      .override(
                                        fontFamily: 'Readex Pro',
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.w600,
                                      ),
                                ),
                              ),
                              Expanded(
                                child: Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      20.0, 0.0, 20.0, 0.0),
                                  child: TextFormField(
                                    controller:
                                        _model.bedtimetextTextController,
                                    focusNode: _model.bedtimetextFocusNode,
                                    onChanged: (_) => EasyDebounce.debounce(
                                      '_model.bedtimetextTextController',
                                      const Duration(milliseconds: 200),
                                      () async {
                                        _model.bgUnits = functions
                                            .bedtimeCorrectionInsulinUnitsToTake(
                                                _model.taskCarbInfo?.first
                                                    .targetBedtimeBG,
                                                double.tryParse(_model
                                                    .bedtimetextTextController
                                                    .text),
                                                _model.taskCarbInfo?.first
                                                    .unitAboveTarget
                                                    ?.toDouble(),
                                                _model.taskCarbInfo?.first
                                                    .bGUnit,
                                                _model.taskCarbInfo?.first
                                                    .targetBg);
                                        setState(() {});
                                        _model.bedtimeGM =
                                            functions.glucoseBedtimeCM(
                                                int.tryParse(_model
                                                    .bedtimetextTextController
                                                    .text),
                                                _model.taskCarbInfo?.first
                                                    .targetBedtimeBG);
                                        setState(() {});
                                      },
                                    ),
                                    autofocus: true,
                                    obscureText: false,
                                    decoration: InputDecoration(
                                      labelStyle: FlutterFlowTheme.of(context)
                                          .labelMedium
                                          .override(
                                            fontFamily: 'Readex Pro',
                                            letterSpacing: 0.0,
                                          ),
                                      hintText: '  EX: 185',
                                      hintStyle: FlutterFlowTheme.of(context)
                                          .labelMedium
                                          .override(
                                            fontFamily: 'Readex Pro',
                                            letterSpacing: 2.0,
                                          ),
                                      enabledBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: FlutterFlowTheme.of(context)
                                              .alternate,
                                          width: 2.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: FlutterFlowTheme.of(context)
                                              .primary,
                                          width: 2.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                      ),
                                      errorBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: FlutterFlowTheme.of(context)
                                              .error,
                                          width: 2.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                      ),
                                      focusedErrorBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: FlutterFlowTheme.of(context)
                                              .error,
                                          width: 2.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                      ),
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Readex Pro',
                                          letterSpacing: 0.0,
                                        ),
                                    maxLength: 3,
                                    maxLengthEnforcement:
                                        MaxLengthEnforcement.enforced,
                                    buildCounter: (context,
                                            {required currentLength,
                                            required isFocused,
                                            maxLength}) =>
                                        null,
                                    keyboardType:
                                        const TextInputType.numberWithOptions(
                                            decimal: true),
                                    validator: _model
                                        .bedtimetextTextControllerValidator
                                        .asValidator(context),
                                    inputFormatters: [
                                      FilteringTextInputFormatter.allow(
                                          RegExp('[0-9]'))
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          width: MediaQuery.sizeOf(context).width * 0.9,
                          height: 129.0,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                            border: Border.all(
                              color: const Color(0xFF1E1E1E),
                            ),
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Text(
                                    'Bedtime Insulin Units',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyLarge
                                        .override(
                                          fontFamily: 'Readex Pro',
                                          letterSpacing: 0.0,
                                        ),
                                  ),
                                  Text(
                                    valueOrDefault<String>(
                                      _model.bgUnits.toString(),
                                      '0',
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .bodyLarge
                                        .override(
                                          fontFamily: 'Readex Pro',
                                          letterSpacing: 0.0,
                                        ),
                                  ),
                                  Divider(
                                    thickness: 1.0,
                                    color: FlutterFlowTheme.of(context).accent4,
                                  ),
                                  Text(
                                    'Glucose Control',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyLarge
                                        .override(
                                          fontFamily: 'Readex Pro',
                                          letterSpacing: 0.0,
                                        ),
                                  ),
                                ],
                              ),
                              Container(
                                width: 318.0,
                                height: 36.0,
                                decoration: BoxDecoration(
                                  color: () {
                                    if (_model.bedtimeGM ==
                                        'No Correction Needed') {
                                      return FlutterFlowTheme.of(context)
                                          .success;
                                    } else if (_model.bedtimeGM ==
                                        'Correct Glucose!') {
                                      return FlutterFlowTheme.of(context)
                                          .warning;
                                    } else {
                                      return FlutterFlowTheme.of(context)
                                          .primaryBackground;
                                    }
                                  }(),
                                  borderRadius: BorderRadius.circular(0.0),
                                  border: Border.all(
                                    color: FlutterFlowTheme.of(context)
                                        .primaryBackground,
                                  ),
                                ),
                                child: Align(
                                  alignment: const AlignmentDirectional(0.0, 0.0),
                                  child: Text(
                                    _model.bedtimeGM!,
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Readex Pro',
                                          color: FlutterFlowTheme.of(context)
                                              .primaryText,
                                          letterSpacing: 0.0,
                                        ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        if (_model.icon3Active)
                          Container(
                            width: MediaQuery.sizeOf(context).width * 0.95,
                            height: 50.0,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                              border: Border.all(
                                color: FlutterFlowTheme.of(context).alternate,
                              ),
                            ),
                            child: InkWell(
                              splashColor: Colors.transparent,
                              focusColor: Colors.transparent,
                              hoverColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onTap: () async {
                                await Navigator.push(
                                  context,
                                  PageTransition(
                                    type: PageTransitionType.fade,
                                    child: FlutterFlowExpandedImageView(
                                      image: Image.asset(
                                        'assets/images/Screenshot_2024-06-10_001816.png',
                                        fit: BoxFit.contain,
                                      ),
                                      allowRotation: false,
                                      tag: 'imageTag3',
                                      useHeroAnimation: true,
                                    ),
                                  ),
                                );
                              },
                              child: Hero(
                                tag: 'imageTag3',
                                transitionOnUserGestures: true,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(5.0),
                                  child: Image.asset(
                                    'assets/images/Screenshot_2024-06-10_001816.png',
                                    width: double.infinity,
                                    height: 200.0,
                                    fit: BoxFit.contain,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 5.0, 0.0, 0.0),
                          child: FFButtonWidget(
                            onPressed: () async {
                              await DailyLogsTable().insert({
                                'user_id': currentUserUid,
                                'date': supaSerialize<DateTime>(functions
                                    .parsedDateTime(getCurrentTimestamp)),
                                'meal_type': _model.choiceChipsValue,
                                'blood_glucose': int.tryParse(
                                    _model.bedtimetextTextController.text),
                                'blood_glucose_insulin_units': _model.bgUnits,
                                'glucose_control': _model.bedtimeGM,
                                'total_administered': _model.bgUnits,
                              });

                              context.pushNamed('home');
                            },
                            text: 'Log Bedtime Info!',
                            options: FFButtonOptions(
                              height: 40.0,
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  24.0, 0.0, 24.0, 0.0),
                              iconPadding: const EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 0.0),
                              color: FlutterFlowTheme.of(context).primary,
                              textStyle: FlutterFlowTheme.of(context)
                                  .titleSmall
                                  .override(
                                    fontFamily: 'Readex Pro',
                                    color: Colors.white,
                                    letterSpacing: 0.0,
                                  ),
                              elevation: 3.0,
                              borderSide: const BorderSide(
                                color: Colors.transparent,
                                width: 1.0,
                              ),
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
