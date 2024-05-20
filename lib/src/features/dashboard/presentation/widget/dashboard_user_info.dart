import 'package:atlas_pos/src/core/presentation/utils/atlas_body_text.dart';
import 'package:flutter/material.dart';

class DashboardUserInfo extends StatelessWidget {
  const DashboardUserInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      child: const Row(
        children: [
          AtlasBodyText(
            'Company Name',
            size: AtBodyTextSize.md,
            weight: AtBodyTextWeight.extraBold,
          ),
        ],
      ),
    );
  }
}
