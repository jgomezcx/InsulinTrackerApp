import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'walkthrough_component_model.dart';
export 'walkthrough_component_model.dart';

class WalkthroughComponentWidget extends StatefulWidget {
  const WalkthroughComponentWidget({
    super.key,
    required this.explanation,
  });

  final String? explanation;

  @override
  State<WalkthroughComponentWidget> createState() =>
      _WalkthroughComponentWidgetState();
}

class _WalkthroughComponentWidgetState
    extends State<WalkthroughComponentWidget> {
  late WalkthroughComponentModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => WalkthroughComponentModel());
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
      height: 165.0,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).secondaryBackground,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text(
              valueOrDefault<String>(
                widget.explanation,
                'explanation',
              ),
              style: FlutterFlowTheme.of(context).bodyMedium.override(
                    fontFamily: 'Readex Pro',
                    fontSize: 18.0,
                    letterSpacing: 0.0,
                  ),
            ),
          ),
        ],
      ),
    );
  }
}
