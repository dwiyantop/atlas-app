import 'package:flutter/material.dart';
import 'package:atlas_pos/src/theme/app_style.dart';

class AtlasImageLocal extends StatelessWidget {
  final String path;
  final double width;
  final double height;

  const AtlasImageLocal(
    this.path, {
    super.key,
    required this.width,
    required this.height,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(
          AppStyles.defaultBorderRadius,
        ),
        image: DecorationImage(
          image: AssetImage(path),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
