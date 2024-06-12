import 'package:flutter/material.dart';
import 'package:tutorial_coach_mark/tutorial_coach_mark.dart';

import '/components/walkthrough_component_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';

// Focus widget keys for this walkthrough
final rowT6dnb4ii = GlobalKey();
final rowB74pyros = GlobalKey();
final buttonTb249asb = GlobalKey();

/// NewUser
///
/// let me show you how to use this application!
List<TargetFocus> createWalkthroughTargets(BuildContext context) => [
      /// Step 1
      TargetFocus(
        keyTarget: rowT6dnb4ii,
        enableOverlayTab: true,
        alignSkip: Alignment.bottomCenter,
        shape: ShapeLightFocus.RRect,
        color: FlutterFlowTheme.of(context).secondaryText,
        contents: [
          TargetContent(
            align: ContentAlign.bottom,
            builder: (context, __) => const WalkthroughComponentWidget(
              explanation:
                  'Heres how you can start tracking your days. this button takes you to the form where it does the calculations for you!  we have no dates to display below so lets add one!',
            ),
          ),
        ],
      ),

      /// Step 2
      TargetFocus(
        keyTarget: rowB74pyros,
        enableOverlayTab: true,
        alignSkip: Alignment.topCenter,
        shape: ShapeLightFocus.RRect,
        color: FlutterFlowTheme.of(context).secondaryText,
        contents: [
          TargetContent(
            align: ContentAlign.top,
            builder: (context, __) => const WalkthroughComponentWidget(
              explanation:
                  'Here it is manually displaying logs for the week! logs done today will display here automatically.',
            ),
          ),
        ],
      ),

      /// Step 3
      TargetFocus(
        keyTarget: buttonTb249asb,
        enableOverlayTab: true,
        alignSkip: Alignment.bottomCenter,
        shape: ShapeLightFocus.Circle,
        color: FlutterFlowTheme.of(context).secondaryText,
        contents: [
          TargetContent(
            align: ContentAlign.bottom,
            builder: (context, __) => const WalkthroughComponentWidget(
              explanation:
                  'Heres how you can start tracking your days. this button takes you to the form where it does the calculations for you!  we have no dates to display below so lets add one!',
            ),
          ),
        ],
      ),
    ];
