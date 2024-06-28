import 'package:flutter/material.dart';
import 'package:atlas_pos/src/theme/app_style.dart';
import 'package:atlas_pos/src/core/presentation/utils/atlas_body_text.dart';
import 'package:atlas_pos/src/features/search_item/presentation/widget/search_item_item_card.dart';

class ItemDetailScreen extends StatefulWidget {
  const ItemDetailScreen({super.key});

  @override
  State<ItemDetailScreen> createState() => _ItemDetailScreenState();
}

class _ItemDetailScreenState extends State<ItemDetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        titleSpacing: 0.0,
        title: const AtlasBodyText(
          'Item Detail',
          size: AtBodyTextSize.sm,
          weight: AtBodyTextWeight.semiBold,
        ),
      ),
      body: SafeArea(
        child: Container(
          padding: AppStyles.defaultPaddingInsetsHorizontal,
          child: const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SearchItemItemCard(
                index: 0,
                showStock: true,
                contentOnly: false,
              ),
              SizedBox(
                height: 16.0,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AtlasBodyText(
                    'Inventory',
                    size: AtBodyTextSize.sm,
                    weight: AtBodyTextWeight.bold,
                  ),
                  SizedBox(
                    height: 8.0,
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      AtlasBodyText(
                        'Default Stock UOM',
                        size: AtBodyTextSize.sm,
                        weight: AtBodyTextWeight.regular,
                      ),
                      AtlasBodyText(
                        'Pair / pair',
                        size: AtBodyTextSize.sm,
                        weight: AtBodyTextWeight.semiBold,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 4.0,
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      AtlasBodyText(
                        'UOM Conversion Value',
                        size: AtBodyTextSize.sm,
                        weight: AtBodyTextWeight.regular,
                      ),
                      AtlasBodyText(
                        '1,00',
                        size: AtBodyTextSize.sm,
                        weight: AtBodyTextWeight.semiBold,
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 16.0,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AtlasBodyText(
                    'Sales Information',
                    size: AtBodyTextSize.sm,
                    weight: AtBodyTextWeight.bold,
                  ),
                  SizedBox(
                    height: 8.0,
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      AtlasBodyText(
                        'Default Sales UOM',
                        size: AtBodyTextSize.sm,
                        weight: AtBodyTextWeight.regular,
                      ),
                      AtlasBodyText(
                        'Pair / pair',
                        size: AtBodyTextSize.sm,
                        weight: AtBodyTextWeight.semiBold,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 4.0,
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      AtlasBodyText(
                        'Price List Rate',
                        size: AtBodyTextSize.sm,
                        weight: AtBodyTextWeight.regular,
                      ),
                      AtlasBodyText(
                        '1.300.000,00',
                        size: AtBodyTextSize.sm,
                        weight: AtBodyTextWeight.semiBold,
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 16.0,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AtlasBodyText(
                    'Stock Location',
                    size: AtBodyTextSize.sm,
                    weight: AtBodyTextWeight.bold,
                  ),
                  SizedBox(
                    height: 8.0,
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      AtlasBodyText(
                        'Warehouse A',
                        size: AtBodyTextSize.sm,
                        weight: AtBodyTextWeight.regular,
                      ),
                      AtlasBodyText(
                        '10',
                        size: AtBodyTextSize.sm,
                        weight: AtBodyTextWeight.semiBold,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 4.0,
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      AtlasBodyText(
                        'Warehouse B',
                        size: AtBodyTextSize.sm,
                        weight: AtBodyTextWeight.regular,
                      ),
                      AtlasBodyText(
                        '10',
                        size: AtBodyTextSize.sm,
                        weight: AtBodyTextWeight.semiBold,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 4.0,
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      AtlasBodyText(
                        'Total',
                        size: AtBodyTextSize.sm,
                        weight: AtBodyTextWeight.regular,
                      ),
                      AtlasBodyText(
                        '20',
                        size: AtBodyTextSize.sm,
                        weight: AtBodyTextWeight.semiBold,
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 16.0,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AtlasBodyText(
                    'Other Information',
                    size: AtBodyTextSize.sm,
                    weight: AtBodyTextWeight.bold,
                  ),
                  SizedBox(
                    height: 8.0,
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      AtlasBodyText(
                        'Status',
                        size: AtBodyTextSize.sm,
                        weight: AtBodyTextWeight.regular,
                      ),
                      AtlasBodyText(
                        'Active',
                        size: AtBodyTextSize.sm,
                        weight: AtBodyTextWeight.semiBold,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 8.0,
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      AtlasBodyText(
                        'Last Updated',
                        size: AtBodyTextSize.sm,
                        weight: AtBodyTextWeight.regular,
                      ),
                      AtlasBodyText(
                        'Jun 25, 2024 12:00:00',
                        size: AtBodyTextSize.sm,
                        weight: AtBodyTextWeight.semiBold,
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
