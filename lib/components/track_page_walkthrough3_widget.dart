import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'track_page_walkthrough3_model.dart';
export 'track_page_walkthrough3_model.dart';

class TrackPageWalkthrough3Widget extends StatefulWidget {
  const TrackPageWalkthrough3Widget({super.key});

  @override
  State<TrackPageWalkthrough3Widget> createState() =>
      _TrackPageWalkthrough3WidgetState();
}

class _TrackPageWalkthrough3WidgetState
    extends State<TrackPageWalkthrough3Widget> {
  late TrackPageWalkthrough3Model _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => TrackPageWalkthrough3Model());
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
          'Here it is manually displaying logs for the week! logs done today will display here automatically.\n\n you can also see a list of logs from last week.',
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
