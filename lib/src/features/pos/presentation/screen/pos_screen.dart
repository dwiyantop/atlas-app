import 'package:flutter/material.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:iconify_flutter/icons/mdi.dart';
import 'package:atlas_pos/src/theme/app_style.dart';
import 'package:atlas_pos/src/features/pos/presentation/widget/pos_start_session.dart';
import 'package:atlas_pos/src/features/pos/presentation/widget/pos_overview.dart';
import 'package:atlas_pos/src/features/pos/presentation/widget/pos_pending_transaction.dart';
import 'package:atlas_pos/src/features/pos/presentation/widget/pos_latest_transaction.dart';

class PosScreen extends StatefulWidget {
  const PosScreen({super.key});

  @override
  State<PosScreen> createState() => _PosScreenState();
}

class _PosScreenState extends State<PosScreen> {
  final bool sessionStarted = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: sessionStarted
            ? Column(
                children: [
                  const SizedBox(
                    height: 16.0,
                  ),
                  Container(
                    padding: AppStyles.defaultPaddingInsetsHorizontal,
                    child: const PosOverview(),
                  ),
                  const SizedBox(
                    height: 24.0,
                  ),
                  Container(
                    padding: AppStyles.defaultPaddingInsetsHorizontal,
                    child: const PosPendingTransaction(),
                  ),
                  const SizedBox(
                    height: 24.0,
                  ),
                  Container(
                    padding: AppStyles.defaultPaddingInsetsHorizontal,
                    child: const PosLatestTransaction(),
                  ),
                ],
              )
            : const PosStartSession(),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(
          bottom: 60,
        ),
        child: FloatingActionButton(
          onPressed: () {},
          mini: true,
          child: Iconify(
            Mdi.plus,
            size: 32.0,
            color: Theme.of(context).colorScheme.onPrimary,
          ),
        ),
      ),
    );
  }
}
