import 'package:flutter/material.dart';

import '../../constants/color/app_colors.dart';

class HomeViewBackground extends StatelessWidget {
  final Widget? child;
  const HomeViewBackground({Key? key, this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(color: AppColors.cerulean),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Spacer(flex: 4),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Flutter Türkiye Festival - WebSocket',
                style: Theme.of(context).textTheme.headline6?.copyWith(
                    color: Colors.white, fontWeight: FontWeight.bold),
              ),
            ],
          ),
          Spacer(),
          Container(
            height: MediaQuery.of(context).size.height * 0.89,
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(40),
                topRight: Radius.circular(40),
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(
                  child: child,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
