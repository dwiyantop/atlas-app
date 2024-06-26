import 'package:flutter/material.dart';
import 'package:atlas_pos/src/features/dashboard/presentation/widget/dashboard_overview.dart';
import 'package:atlas_pos/src/features/dashboard/presentation/widget/dashboard_user_info.dart';

import 'package:atlas_pos/src/features/search_item/presentation/screen/search_item_screen.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  late AnimationController animationController;
  late Animation<double> animationValue;
  int currentPageIndex = 0;

  final List<Widget> screens = const [
    SearchItemScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            DashboardUserInfo(),
            DashboardOverview(),
          ],
        ),
      ),
    );
  }
}
