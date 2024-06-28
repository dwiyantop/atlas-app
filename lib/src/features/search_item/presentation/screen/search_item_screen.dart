import 'package:flutter/material.dart';
import 'package:mobile_scanner/mobile_scanner.dart';
import 'package:iconify_flutter/icons/mdi.dart';
import 'package:atlas_pos/src/theme/app_style.dart';
import 'package:atlas_pos/src/core/presentation/form/text_field.dart';
import 'package:atlas_pos/src/features/search_item/presentation/widget/search_item_item_card.dart';
import 'package:atlas_pos/src/features/item_detail/presentation/screen/item_detail_screen.dart';

class SearchItemScreen extends StatefulWidget {
  const SearchItemScreen({super.key});

  @override
  State<SearchItemScreen> createState() => _SearchItemScreenState();
}

class _SearchItemScreenState extends State<SearchItemScreen> {
  final MobileScannerController scannerController = MobileScannerController(
    formats: [
      BarcodeFormat.ean13,
    ],
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: AppStyles.defaultPaddingInsetsAll,
              child: const AtlasTextField(
                label: 'Barcode',
                placeholder: 'Search item by name',
                prefixIconIconify: Mdi.search,
                initialValue: '',
              ),
            ),
            Expanded(
              child: ListView.builder(
                padding: AppStyles.defaultPaddingInsetsHorizontal,
                itemCount: 20,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    margin: const EdgeInsets.only(bottom: AppStyles.defaultMargin),
                    child: InkWell(
                      child: SearchItemItemCard(
                        index: index,
                        showStock: true,
                        contentOnly: false,
                      ),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const ItemDetailScreen(),
                          ),
                        );
                      },
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Future<void> dispose() async {
    super.dispose();
    await scannerController.dispose();
  }
}
