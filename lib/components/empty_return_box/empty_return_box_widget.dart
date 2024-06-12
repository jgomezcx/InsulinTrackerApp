import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'empty_return_box_model.dart';
export 'empty_return_box_model.dart';

class EmptyReturnBoxWidget extends StatefulWidget {
  const EmptyReturnBoxWidget({super.key});

  @override
  State<EmptyReturnBoxWidget> createState() => _EmptyReturnBoxWidgetState();
}

class _EmptyReturnBoxWidgetState extends State<EmptyReturnBoxWidget> {
  late EmptyReturnBoxModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => EmptyReturnBoxModel());
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
        borderRadius: BorderRadius.circular(24.0),
        border: Border.all(
          color: const Color(0xFFB6B6B6),
          width: 8.0,
        ),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Flexible(
            child: Align(
              alignment: const AlignmentDirectional(0.0, 0.0),
              child: Text(
                'No meals logged on this day.',
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'Readex Pro',
                      fontSize: 20.0,
                      letterSpacing: 0.0,
                      fontStyle: FontStyle.italic,
                    ),
              ),
            ),
          ),
          Align(
            alignment: const AlignmentDirectional(0.0, 1.0),
            child: Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 50.0),
              child: Text(
                'select a different date',
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'Readex Pro',
                      fontSize: 16.0,
                      letterSpacing: 0.0,
                      fontWeight: FontWeight.w300,
                    ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
