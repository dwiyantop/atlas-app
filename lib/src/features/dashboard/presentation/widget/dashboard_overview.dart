import 'package:flutter/material.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:iconify_flutter/icons/mdi.dart';
import 'package:atlas_pos/src/theme/app_style.dart';
import 'package:atlas_pos/src/core/presentation/utils/atlas_body_text.dart';

class DashboardOverview extends StatelessWidget {
  const DashboardOverview({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        children: [
          Expanded(
            child: overviewCard(
              context,
              title: 'Active Items',
              value: 100,
              iconifyIcon: Mdi.tag_text_outline,
            ),
          ),
          const SizedBox(
            width: 8.0,
          ),
          Expanded(
            child: overviewCard(
              context,
              title: 'Stock Value',
              value: 100,
              iconifyIcon: Mdi.book_open_page_variant_outline,
            ),
          ),
          const SizedBox(
            width: 8.0,
          ),
          Expanded(
            child: overviewCard(
              context,
              title: 'Sales Order',
              value: 100,
              iconifyIcon: Mdi.bar_chart,
            ),
          ),
        ],
      ),
    );
  }

  Widget overviewCard(
    BuildContext context, {
    required String title,
    required double value,
    required String iconifyIcon,
  }) {
    return Card(
      elevation: 4,
      margin: EdgeInsets.zero,
      clipBehavior: Clip.antiAliasWithSaveLayer,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(
          AppStyles.defaultBorderRadius,
        ),
      ),
      color: Theme.of(context).colorScheme.primary,
      child: Container(
        padding: AppStyles.defaultPaddingInsetsAll,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Iconify(
              iconifyIcon,
              size: 36.0,
              color: Theme.of(context).colorScheme.onPrimary,
            ),
            const SizedBox(
              height: 8.0,
            ),
            AtlasBodyText(
              title,
              size: AtBodyTextSize.xs,
              weight: AtBodyTextWeight.medium,
              color: Theme.of(context).colorScheme.onPrimary,
            ),
            AtlasBodyText(
              value.toString(),
              size: AtBodyTextSize.sm,
              weight: AtBodyTextWeight.extraBold,
              color: Theme.of(context).colorScheme.onPrimary,
            ),
          ],
        ),
      ),
    );
  }
}
