import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:atlas_pos/src/theme/app_style.dart';

class AtlasImageNetwork extends StatelessWidget {
  final String url;
  final String? placeholder;
  final double width;
  final double height;
  final bool circle;

  const AtlasImageNetwork(
    this.url, {
    super.key,
    this.placeholder,
    required this.width,
    required this.height,
    this.circle = false,
  });

  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      imageUrl: url,
      width: width,
      height: height,
      imageBuilder: (context, imageProvider) {
        if (circle) {
          return Container(
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.shadow,
              shape: BoxShape.circle,
              image: DecorationImage(
                image: imageProvider,
                fit: BoxFit.cover,
              ),
            ),
          );
        } else {
          return Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(
                AppStyles.defaultBorderRadius,
              ),
              image: DecorationImage(
                image: imageProvider,
                fit: BoxFit.cover,
              ),
            ),
          );
        }
      },
      placeholder: placeholder == null
          ? null
          : (context, url) => Container(
                margin: const EdgeInsets.all(2.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(
                    AppStyles.defaultBorderRadius,
                  ),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(
                    AppStyles.defaultBorderRadius,
                  ),
                  child: Image.asset(
                    placeholder!,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
      errorWidget: (context, url, error) => const Icon(Icons.error),
    );
  }
}
