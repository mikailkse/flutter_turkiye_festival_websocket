import 'package:chart_sparkline/chart_sparkline.dart';
import 'package:flutter/material.dart';
import 'package:flutter_websocket_example/core/extensions/contex_extensions.dart';

import '../../home/viewmodel/home_viewmodel.dart';
import '../constants/color/app_colors.dart';

class WsCard extends StatelessWidget {
  final String? symbol;
  final double? price;
  final double? date;
  final List<double>? data;
  final HomeViewModel? viewModel;

  const WsCard({
    Key? key,
    this.symbol,
    this.price,
    this.date,
    this.data,
    this.viewModel,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: context.paddingLow,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: context.borderRadiusLow,
          color: AppColors.springWood,
        ),
        child: SizedBox(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                flex: 3,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      symbol.toString(),
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        color: AppColors.red,
                      ),
                    )
                  ],
                ),
              ),
              Expanded(
                flex: 1,
                child: Sparkline(
                  data: data ?? [],
                  fillMode: FillMode.below,
                  useCubicSmoothing: true,
                  cubicSmoothingFactor: 0.2,
                  lineColor:
                      (price ?? 0) > 0 ? AppColors.pastelGreen : AppColors.red,
                  fillGradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: (price ?? 0) > 0.35
                        ? [
                            AppColors.pastelGreen,
                            AppColors.white,
                          ]
                        : [
                            AppColors.red,
                            AppColors.white,
                          ],
                  ),
                ),
              ),
              Expanded(
                flex: 2,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      '' + price.toString(),
                      style: const TextStyle(
                          fontSize: 20, fontWeight: FontWeight.w500),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          price.toString() + "%",
                          style: TextStyle(
                            color: (price ?? 0) < 0
                                ? AppColors.pastelGreen
                                : AppColors.red,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
