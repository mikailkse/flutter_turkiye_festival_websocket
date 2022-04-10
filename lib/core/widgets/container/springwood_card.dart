import 'package:flutter/material.dart';
import 'package:flutter_websocket_example/core/extensions/contex_extensions.dart';

import '../../constants/color/app_colors.dart';

class SpringWoodCard extends StatelessWidget {
  final Widget child;
  final double? width;
  final double? height;

  const SpringWoodCard({Key? key, required this.child, this.width, this.height})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: Colors.white54,
        borderRadius: context.borderRadiusMedium,
        border: Border.all(
          width: 1.0,
          color: AppColors.springWood,
        ),
        boxShadow: [
          BoxShadow(
            offset: const Offset(0, 6),
            blurRadius: 8,
            spreadRadius: 0,
            color: Colors.grey.withOpacity(0.1),
          ),
        ],
      ),
      child: child,
    );
  }
}
