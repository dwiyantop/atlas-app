import 'package:atlas_pos/src/core/presentation/utils/atlas_body_text.dart';
import 'package:atlas_pos/src/core/presentation/utils/atlas_image_network.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class DashboardUserInfo extends StatelessWidget {
  const DashboardUserInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const AtlasBodyText(
            'Company Name',
            size: AtBodyTextSize.md,
            weight: AtBodyTextWeight.extraBold,
          ),
          GestureDetector(
            child: const AtlasImageNetwork(
              'https://robohash.org/username',
              width: 40.0,
              height: 40.0,
              circle: true,
            ),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
