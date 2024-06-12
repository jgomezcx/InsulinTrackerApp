import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'track_page_walkthrough1_model.dart';
export 'track_page_walkthrough1_model.dart';

class TrackPageWalkthrough1Widget extends StatefulWidget {
  const TrackPageWalkthrough1Widget({super.key});

  @override
  State<TrackPageWalkthrough1Widget> createState() =>
      _TrackPageWalkthrough1WidgetState();
}

class _TrackPageWalkthrough1WidgetState
    extends State<TrackPageWalkthrough1Widget> {
  late TrackPageWalkthrough1Model _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => TrackPageWalkthrough1Model());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).secondaryBackground,
      ),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Text(
          'Heres how you can start tracking your days. this button takes you to the form where it does the calculations for you!\n\nwe have no dates to display below so lets add one!',
          style: FlutterFlowTheme.of(context).bodyMedium.override(
                fontFamily: 'Readex Pro',
                fontSize: 18.0,
                letterSpacing: 0.0,
              ),
        ),
      ),
    );
  }
}
