import 'package:chart_sparkline/chart_sparkline.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../constants/color/app_colors.dart';
import '../extensions/contex_extensions.dart';

class WsCard extends StatelessWidget {
  final String? symbolName;
  final String? date;
  final double? bp;
  final double? bs;
  final List<double>? data;

  const WsCard({
    Key? key,
    this.symbolName,
    this.data,
    this.bp,
    this.date,
    this.bs,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: context.paddingLow,
      child: Container(
        width: context.md9,
        height: context.height * 0.2,
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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CircleAvatar(
                      backgroundColor: Colors.transparent,
                      backgroundImage: AssetImage('assets/images/btclogo.png'),
                    ),
                    SizedBox(width: context.width * 0.02),
                    Column(
                      children: [
                        Text(
                          symbolName.toString(),
                          style: Theme.of(context)
                              .textTheme
                              .bodyText1
                              ?.copyWith(
                                  color: Colors.grey,
                                  fontWeight: FontWeight.bold),
                        ),
                        Text(
                          'BİTCOİN',
                          style: Theme.of(context)
                              .textTheme
                              .headline6
                              ?.copyWith(
                                  color: AppColors.armadillo,
                                  fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ],
                ),
                Text(
                  DateFormat('hh:mm:ss').format(
                    DateTime.parse(date.toString()),
                  ),
                  style: Theme.of(context).textTheme.headline6?.copyWith(
                      color: AppColors.armadillo, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Sparkline(
                  fallbackWidth: context.width * 0.24,
                  fallbackHeight: context.height * 0.08,
                  data: data!,
                  fillMode: FillMode.none,
                  lineColor: double.parse(bp.toString()) > 0.31
                      ? AppColors.emerald
                      : AppColors.redOrange,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    SizedBox(height: context.height * 0.03),
                    Text(
                      NumberFormat.simpleCurrency().format(bp),
                      style: Theme.of(context)
                          .textTheme
                          .headline6
                          ?.copyWith(color: AppColors.armadillo),
                    ),
                    Text(
                      bs.toString() + '%',
                      style: Theme.of(context).textTheme.headline6?.copyWith(
                            color: double.parse(bs.toString()) > 0.31
                                ? AppColors.emerald
                                : AppColors.redOrange,
                          ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
