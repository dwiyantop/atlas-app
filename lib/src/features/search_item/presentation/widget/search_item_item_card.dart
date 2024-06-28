import 'package:flutter/material.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:iconify_flutter/icons/mdi.dart';
import 'package:atlas_pos/src/theme/app_style.dart';
import 'package:atlas_pos/src/core/presentation/utils/atlas_body_text.dart';

class SearchItemItemCard extends StatelessWidget {
  const SearchItemItemCard({
    super.key,
    required this.index,
    this.showStock = false,
    this.contentOnly = false,
  });

  final int index;
  final bool showStock;
  final bool contentOnly;

  @override
  Widget build(BuildContext context) {
    final bool isDarkTheme = Theme.of(context).brightness == Brightness.dark;

    final double cardElevation = contentOnly ? 0 : 4;
    final Color cardColor = contentOnly
        ? Colors.transparent
        : isDarkTheme
            ? Theme.of(context).colorScheme.secondaryContainer
            : Theme.of(context).colorScheme.surfaceContainer;
    final EdgeInsetsGeometry cardPadding = contentOnly ? const EdgeInsets.all(0) : AppStyles.defaultPaddingInsetsAll;

    return Card(
      elevation: cardElevation,
      margin: EdgeInsets.zero,
      clipBehavior: Clip.antiAliasWithSaveLayer,
      color: cardColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(
          AppStyles.defaultBorderRadius,
        ),
      ),
      child: Container(
        padding: cardPadding,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const AtlasBodyText(
              'Nike Air Max 90 SE 41 Red',
              size: AtBodyTextSize.md,
              weight: AtBodyTextWeight.bold,
            ),
            const SizedBox(
              height: 16.0,
            ),
            Row(
              children: [
                Expanded(
                  child: Column(
                    children: [
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Iconify(
                            Mdi.layers_triple_outline,
                            size: 20.0,
                            color: Theme.of(context).textTheme.bodySmall!.color,
                          ),
                          const SizedBox(
                            width: 8.0,
                          ),
                          const AtlasBodyText(
                            'Shoes',
                            size: AtBodyTextSize.sm,
                            weight: AtBodyTextWeight.regular,
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 6.0,
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Iconify(
                            Mdi.clover,
                            size: 20.0,
                            color: Theme.of(context).textTheme.bodySmall!.color,
                          ),
                          const SizedBox(
                            width: 8.0,
                          ),
                          const AtlasBodyText(
                            'Nike',
                            size: AtBodyTextSize.sm,
                            weight: AtBodyTextWeight.regular,
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 6.0,
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Iconify(
                            Mdi.tag_outline,
                            size: 20.0,
                            color: Theme.of(context).textTheme.bodySmall!.color,
                          ),
                          const SizedBox(
                            width: 8.0,
                          ),
                          const AtlasBodyText(
                            'ITM-2024-0002',
                            size: AtBodyTextSize.sm,
                            weight: AtBodyTextWeight.regular,
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 6.0,
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Iconify(
                            Mdi.barcode,
                            size: 20.0,
                            color: Theme.of(context).textTheme.bodySmall!.color,
                          ),
                          const SizedBox(
                            width: 8.0,
                          ),
                          const AtlasBodyText(
                            '8992301200048',
                            size: AtBodyTextSize.sm,
                            weight: AtBodyTextWeight.regular,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                if (showStock) ...[
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Iconify(
                        Mdi.package_variant_closed,
                        size: 20.0,
                        color: Theme.of(context).textTheme.bodySmall!.color,
                      ),
                      const SizedBox(
                        width: 4.0,
                      ),
                      const AtlasBodyText(
                        '20',
                        size: AtBodyTextSize.md,
                        weight: AtBodyTextWeight.bold,
                      ),
                    ],
                  ),
                ],
              ],
            ),
          ],
        ),
      ),
    );
  }
}
