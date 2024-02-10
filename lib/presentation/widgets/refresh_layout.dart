import 'package:flutter/material.dart';
import 'package:weather_app/common/app_colors.dart';

class RefreshLayout extends StatelessWidget {
  final Function onRefresh;
  final Widget child;
  final Color? color;

  const RefreshLayout({
    super.key,
    required this.onRefresh,
    required this.child,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator.adaptive(
      backgroundColor: AppColors.white,
      color: color,
      onRefresh: () async => onRefresh(),
      child: CustomScrollView(
        slivers: [
          SliverFillRemaining(child: child),
        ],
      ),
    );
  }
}
