import 'package:flutter/material.dart';
import 'package:mobile_scanner/mobile_scanner.dart';
import 'package:atlas_pos/src/theme/app_style.dart';
import 'package:atlas_pos/src/features/scan_item/presentation/widget/scan_item_label.dart';
import 'package:atlas_pos/src/features/scan_item/presentation/widget/scan_item_error.dart';

class ScanItemScreen extends StatefulWidget {
  const ScanItemScreen({super.key});

  @override
  State<ScanItemScreen> createState() => _ScanItemScreenState();
}

class _ScanItemScreenState extends State<ScanItemScreen> {
  final MobileScannerController scannerController = MobileScannerController(
    formats: [
      BarcodeFormat.ean13,
    ],
  );

  @override
  Widget build(BuildContext context) {
    const double bottomNavBarHeight = 50.0;

    final mediaQuery = MediaQuery.of(context);
    final screenWidth = mediaQuery.size.width;
    final screenHeight = mediaQuery.size.height;
    final paddingTop = mediaQuery.padding.top;
    final paddingBottom = mediaQuery.padding.bottom;

    final availableHeight = screenHeight - paddingTop - paddingBottom - bottomNavBarHeight;

    const double scannerWindowWidth = 300.0;
    const double scannerWindowHeight = 100.0;

    final centerY = paddingTop + (availableHeight / 2);

    final scannerWindow = Rect.fromCenter(
      center: Offset(screenWidth / 2, centerY),
      width: scannerWindowWidth,
      height: scannerWindowHeight,
    );

    return Scaffold(
      body: SafeArea(
        child: Stack(
          fit: StackFit.expand,
          children: [
            Center(
              child: Padding(
                padding: AppStyles.defaultPaddingInsetsAll,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(
                    AppStyles.defaultBorderRadius,
                  ),
                  child: MobileScanner(
                    fit: BoxFit.cover,
                    controller: scannerController,
                    scanWindow: scannerWindow,
                    errorBuilder: (context, error, child) {
                      return ScanItemError(error: error);
                    },
                    overlayBuilder: (context, constraints) {
                      return Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Align(
                          alignment: Alignment.bottomCenter,
                          child: ScanItemLabel(
                            barcodes: scannerController.barcodes,
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ),
            ),
            ValueListenableBuilder(
              valueListenable: scannerController,
              builder: (context, value, child) {
                if (!value.isInitialized || !value.isRunning || value.error != null) {
                  return const SizedBox();
                }

                return CustomPaint(
                  painter: ScannerOverlay(
                    scanWindow: scannerWindow,
                  ),
                );
              },
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

class ScannerOverlay extends CustomPainter {
  const ScannerOverlay({
    required this.scanWindow,
    this.borderRadius = 12.0,
  });

  final Rect scanWindow;
  final double borderRadius;

  @override
  void paint(Canvas canvas, Size size) {
    final backgroundPath = Path()..addRect(Rect.largest);

    final cutoutPath = Path()
      ..addRRect(
        RRect.fromRectAndCorners(
          scanWindow,
          topLeft: Radius.circular(borderRadius),
          topRight: Radius.circular(borderRadius),
          bottomLeft: Radius.circular(borderRadius),
          bottomRight: Radius.circular(borderRadius),
        ),
      );

    final backgroundPaint = Paint()
      ..color = Colors.black.withOpacity(0.5)
      ..style = PaintingStyle.fill
      ..blendMode = BlendMode.dstOut;

    final backgroundWithCutout = Path.combine(
      PathOperation.difference,
      backgroundPath,
      cutoutPath,
    );

    final borderPaint = Paint()
      ..color = Colors.white
      ..style = PaintingStyle.stroke
      ..strokeWidth = 2.0;

    final borderRect = RRect.fromRectAndCorners(
      scanWindow,
      topLeft: Radius.circular(borderRadius),
      topRight: Radius.circular(borderRadius),
      bottomLeft: Radius.circular(borderRadius),
      bottomRight: Radius.circular(borderRadius),
    );

    // First, draw the background,
    // with a cutout area that is a bit larger than the scan window.
    // Finally, draw the scan window itself.
    canvas.drawPath(backgroundWithCutout, backgroundPaint);
    canvas.drawRRect(borderRect, borderPaint);
  }

  @override
  bool shouldRepaint(ScannerOverlay oldDelegate) {
    return scanWindow != oldDelegate.scanWindow || borderRadius != oldDelegate.borderRadius;
  }
}

// class ScannerOverlay extends CustomPainter {
//   const ScannerOverlay({
//     required this.scanWindow,
//     this.borderRadius = 12.0,
//   });

//   final Rect scanWindow;
//   final double borderRadius;

//   @override
//   void paint(Canvas canvas, Size size) {
//     // Paint the background with a semi-transparent overlay
//     final paint = Paint()
//       ..color = Colors.black.withOpacity(0.5)
//       ..style = PaintingStyle.fill;

//     // Draw the background over the entire canvas
//     canvas.drawRect(Rect.fromLTWH(0, 0, size.width, size.height), paint);

//     // Create a cutout path
//     final cutoutPath = Path()
//       ..addRRect(
//         RRect.fromRectAndCorners(
//           scanWindow,
//           topLeft: Radius.circular(borderRadius),
//           topRight: Radius.circular(borderRadius),
//           bottomLeft: Radius.circular(borderRadius),
//           bottomRight: Radius.circular(borderRadius),
//         ),
//       );

//     // Use the `saveLayer` and `restore` methods to create a cutout effect
//     // First, create a save layer
//     canvas.saveLayer(
//       Rect.fromLTWH(0, 0, size.width, size.height),
//       Paint(),
//     );

//     // Draw the semi-transparent background again
//     canvas.drawRect(Rect.fromLTWH(0, 0, size.width, size.height), paint);

//     // Cut out the scan window using `BlendMode.clear`
//     final cutoutPaint = Paint()..blendMode = BlendMode.clear;
//     canvas.drawPath(cutoutPath, cutoutPaint);

//     // Restore to apply the cutout effect
//     canvas.restore();

//     // Draw the border around the scan window
//     final borderPaint = Paint()
//       ..color = Colors.white
//       ..style = PaintingStyle.stroke
//       ..strokeWidth = 2.0;

//     final borderRect = RRect.fromRectAndCorners(
//       scanWindow,
//       topLeft: Radius.circular(borderRadius),
//       topRight: Radius.circular(borderRadius),
//       bottomLeft: Radius.circular(borderRadius),
//       bottomRight: Radius.circular(borderRadius),
//     );

//     canvas.drawRRect(borderRect, borderPaint);
//   }

//   @override
//   bool shouldRepaint(ScannerOverlay oldDelegate) {
//     return scanWindow != oldDelegate.scanWindow || borderRadius != oldDelegate.borderRadius;
//   }
// }
