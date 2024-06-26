import 'package:atlas_pos/src/features/search_item/presentation/screen/search_item_screen.dart';
import 'package:flutter/material.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:iconify_flutter/icons/mdi.dart';
import 'package:atlas_pos/src/features/dashboard/presentation/screen/dashboard_screen.dart';
import 'package:atlas_pos/src/features/scan_item/presentation/screen/scan_item_screen.dart';
import 'package:atlas_pos/src/features/pos/presentation/screen/pos_screen.dart';

class EntryPointScreen extends StatefulWidget {
  const EntryPointScreen({super.key});

  @override
  State<EntryPointScreen> createState() => _EntryPointScreenState();
}

class _EntryPointScreenState extends State<EntryPointScreen> with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<double> animationConfig;
  int currentPageIndex = 0;

  final List<Widget> screens = const [
    DashboardScreen(),
    ScanItemScreen(),
    SearchItemScreen(),
    PosScreen(),
  ];

  @override
  void initState() {
    super.initState();
    animationController = AnimationController(
      duration: const Duration(milliseconds: 500),
      vsync: this,
    );
    animationConfig = Tween<double>(
      begin: 0.0,
      end: 1.0,
    ).animate(animationController);
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: AnimatedSwitcher(
        duration: const Duration(milliseconds: 200),
        child: screens[currentPageIndex],
        transitionBuilder: (child, animation) {
          return FadeTransition(
            opacity: animation,
            child: child,
          );
        },
      ),
      bottomNavigationBar: Container(
        margin: EdgeInsets.zero,
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Theme.of(context).colorScheme.shadow.withOpacity(0.2),
              spreadRadius: 1,
              blurRadius: 2,
              offset: const Offset(0, 1),
            ),
          ],
          borderRadius: const BorderRadius.only(
            topRight: Radius.circular(28.0),
            topLeft: Radius.circular(28.0),
          ),
        ),
        child: ClipRRect(
          borderRadius: const BorderRadius.only(
            topRight: Radius.circular(28.0),
            topLeft: Radius.circular(28.0),
          ),
          child: NavigationBar(
            selectedIndex: currentPageIndex,
            labelBehavior: NavigationDestinationLabelBehavior.alwaysShow,
            destinations: [
              NavigationDestination(
                label: 'Dashboard',
                icon: Iconify(
                  Mdi.view_dashboard_outline,
                  color: Theme.of(context).colorScheme.onSurfaceVariant,
                ),
                selectedIcon: Iconify(
                  Mdi.view_dashboard_outline,
                  color: Theme.of(context).colorScheme.onPrimary,
                ),
              ),
              NavigationDestination(
                label: 'Scan Item',
                icon: Iconify(
                  Mdi.barcode_scanner,
                  color: Theme.of(context).colorScheme.onSurfaceVariant,
                ),
                selectedIcon: Iconify(
                  Mdi.barcode_scanner,
                  color: Theme.of(context).colorScheme.onPrimary,
                ),
              ),
              NavigationDestination(
                label: 'Search Item',
                icon: Iconify(
                  Mdi.search_expand,
                  color: Theme.of(context).colorScheme.onSurfaceVariant,
                ),
                selectedIcon: Iconify(
                  Mdi.search_expand,
                  color: Theme.of(context).colorScheme.onPrimary,
                ),
              ),
              NavigationDestination(
                label: 'PoS',
                icon: Iconify(
                  Mdi.storefront_outline,
                  color: Theme.of(context).colorScheme.onSurfaceVariant,
                ),
                selectedIcon: Iconify(
                  Mdi.storefront_outline,
                  color: Theme.of(context).colorScheme.onPrimary,
                ),
              ),
            ],
            onDestinationSelected: (int index) {
              setState(() {
                currentPageIndex = index;
                animationController.reset();
                animationController.forward();
              });
            },
          ),
        ),
      ),
    );
  }
}
