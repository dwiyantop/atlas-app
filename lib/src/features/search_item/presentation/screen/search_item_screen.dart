import 'package:flutter/material.dart';
import 'package:iconify_flutter/icons/mdi.dart';
import 'package:mobile_scanner/mobile_scanner.dart';
import 'package:atlas_pos/src/core/presentation/form/text_field.dart';

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
          children: [
            Container(
              margin: const EdgeInsets.all(16.0),
              child: const AtlasTextField(
                label: 'Barcode',
                placeholder: 'Scan or input barcode item',
                suffixIconIconify: Mdi.barcode,
                initialValue: '',
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
