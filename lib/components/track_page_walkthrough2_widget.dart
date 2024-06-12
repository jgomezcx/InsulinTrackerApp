import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'track_page_walkthrough2_model.dart';
export 'track_page_walkthrough2_model.dart';

class TrackPageWalkthrough2Widget extends StatefulWidget {
  const TrackPageWalkthrough2Widget({super.key});

  @override
  State<TrackPageWalkthrough2Widget> createState() =>
      _TrackPageWalkthrough2WidgetState();
}

class _TrackPageWalkthrough2WidgetState
    extends State<TrackPageWalkthrough2Widget> {
  late TrackPageWalkthrough2Model _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => TrackPageWalkthrough2Model());
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
          'Heres how you can search for specific days and see all the meal types, insulin taken, and other information you logged for that day.\n\nYou are also able to find log for specfic days in the calendar tab!',
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
