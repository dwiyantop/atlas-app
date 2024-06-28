import 'package:atlas_pos/src/core/presentation/utils/atlas_body_text.dart';
import 'package:atlas_pos/src/core/presentation/utils/atlas_headline_text.dart';
import 'package:atlas_pos/src/core/presentation/utils/atlas_image_local.dart';
import 'package:atlas_pos/src/core/presentation/utils/elevated_button.dart';
import 'package:flutter/material.dart';

class PosStartSession extends StatelessWidget {
  const PosStartSession({super.key});

  @override
  Widget build(BuildContext context) {
    void startSession() {}

    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const AtlasImageLocal(
            'assets/images/pos.png',
            width: 320.0,
            height: 196.94,
          ),
          const SizedBox(
            height: 32.0,
          ),
          const AtlasHeadlineText(
            'Point of Sales',
            size: AtHeadlineTextSize.xs,
            weight: AtHeadlineTextWeight.bold,
          ),
          const AtlasBodyText(
            size: AtBodyTextSize.md,
            'Please start session before make transaction',
          ),
          const SizedBox(
            height: 16.0,
          ),
          SizedBox(
            width: 200,
            child: AtlasElevatedButton(
              'Start Session',
              onPressed: startSession,
              loading: false,
            ),
          ),
        ],
      ),
    );
  }
}
