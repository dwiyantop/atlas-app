import 'package:flutter/material.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:iconify_flutter/icons/mdi.dart';
import 'package:atlas_pos/src/theme/app_style.dart';
import 'package:atlas_pos/src/core/presentation/utils/atlas_body_text.dart';

class SearchItemItemCard extends StatelessWidget {
  const SearchItemItemCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      margin: EdgeInsets.zero,
      clipBehavior: Clip.antiAliasWithSaveLayer,
      color: Theme.of(context).colorScheme.surfaceContainerHighest,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(
          AppStyles.defaultBorderRadius,
        ),
      ),
      child: Container(
        padding: AppStyles.defaultPaddingInsetsAll,
        child: Row(
          children: [
            const Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AtlasBodyText(
                    'Item Name',
                    size: AtBodyTextSize.sm,
                    weight: AtBodyTextWeight.bold,
                  ),
                  SizedBox(
                    height: 4.0,
                  ),
                  AtlasBodyText(
                    'Shoes / Nike',
                    size: AtBodyTextSize.xs,
                    weight: AtBodyTextWeight.regular,
                  ),
                  AtlasBodyText(
                    'ITM-2024-0002',
                    size: AtBodyTextSize.xs,
                    weight: AtBodyTextWeight.regular,
                  ),
                  AtlasBodyText(
                    '8992301200048',
                    size: AtBodyTextSize.xs,
                    weight: AtBodyTextWeight.regular,
                  ),
                ],
              ),
            ),
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
                  weight: AtBodyTextWeight.semiBold,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
