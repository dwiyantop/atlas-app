import 'package:flutter/material.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:iconify_flutter/icons/mdi.dart';
import 'package:atlas_pos/src/theme/app_style.dart';
import 'package:atlas_pos/src/core/presentation/utils/atlas_body_text.dart';

class PosLatestTransaction extends StatefulWidget {
  const PosLatestTransaction({super.key});

  @override
  State<PosLatestTransaction> createState() => _PosLatestTransactionState();
}

class _PosLatestTransactionState extends State<PosLatestTransaction> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const AtlasBodyText(
          'Latest Transaction',
          size: AtBodyTextSize.sm,
          weight: AtBodyTextWeight.bold,
        ),
        const SizedBox(
          height: 16.0,
        ),
        activeTransactionCard(),
        const SizedBox(
          height: 8.0,
        ),
        activeTransactionCard(),
        const SizedBox(
          height: 8.0,
        ),
        activeTransactionCard(),
        const SizedBox(
          height: 8.0,
        ),
        activeTransactionCard(),
      ],
    );
  }

  Widget activeTransactionCard() {
    final bool isDarkTheme = Theme.of(context).brightness == Brightness.dark;
    final Color cardColor =
        isDarkTheme ? Theme.of(context).colorScheme.secondaryContainer : Theme.of(context).colorScheme.surfaceContainer;

    return Card(
      elevation: 4,
      margin: EdgeInsets.zero,
      clipBehavior: Clip.antiAliasWithSaveLayer,
      color: cardColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(
          AppStyles.defaultBorderRadius,
        ),
      ),
      child: Container(
        padding: AppStyles.defaultPaddingInsetsAll,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const AtlasBodyText(
                        'SO-2024-00001',
                        size: AtBodyTextSize.sm,
                        weight: AtBodyTextWeight.regular,
                      ),
                      const SizedBox(
                        height: 4.0,
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Iconify(
                            Mdi.tags,
                            size: 20.0,
                            color: Theme.of(context).textTheme.bodySmall!.color,
                          ),
                          const SizedBox(
                            width: 8.0,
                          ),
                          const AtlasBodyText(
                            '5 Items',
                            size: AtBodyTextSize.sm,
                            weight: AtBodyTextWeight.regular,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                const AtlasBodyText(
                  'Rp39.000.000',
                  size: AtBodyTextSize.sm,
                  weight: AtBodyTextWeight.bold,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
