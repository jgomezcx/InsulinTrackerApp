import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'empty_list_week_simple_model.dart';
export 'empty_list_week_simple_model.dart';

class EmptyListWeekSimpleWidget extends StatefulWidget {
  const EmptyListWeekSimpleWidget({super.key});

  @override
  State<EmptyListWeekSimpleWidget> createState() =>
      _EmptyListWeekSimpleWidgetState();
}

class _EmptyListWeekSimpleWidgetState extends State<EmptyListWeekSimpleWidget> {
  late EmptyListWeekSimpleModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => EmptyListWeekSimpleModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      children: [
        Icon(
          Icons.notifications_none,
          color: FlutterFlowTheme.of(context).secondaryText,
          size: 48.0,
        ),
        Padding(
          padding: const EdgeInsetsDirectional.fromSTEB(0.0, 16.0, 0.0, 0.0),
          child: Text(
            'No Activity',
            style: FlutterFlowTheme.of(context).headlineMedium.override(
                  fontFamily: 'Outfit',
                  fontSize: 20.0,
                  letterSpacing: 0.0,
                ),
          ),
        ),
        Flexible(
          child: Align(
            alignment: const AlignmentDirectional(0.0, 0.0),
            child: Text(
              'No meals logged this week',
              style: FlutterFlowTheme.of(context).bodyMedium.override(
                    fontFamily: 'Readex Pro',
                    color: FlutterFlowTheme.of(context).secondaryText,
                    fontSize: 16.0,
                    letterSpacing: 0.0,
                    fontStyle: FontStyle.italic,
                  ),
            ),
          ),
        ),
      ],
    );
  }
}
