import 'package:flutter/material.dart';
import 'package:flutter_websocket_example/core/widgets/ws_card.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

import '../../core/base/view/base_wiew.dart';
import '../../core/widgets/background/homeview_background.dart';
import '../viewmodel/home_view_model.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return BaseView<HomeViewModel>(
      viewModel: HomeViewModel(),
      onModelReady: (model) {
        model.setContext(context);
        model.init();
      },
      onPageBuilder: (BuildContext context, HomeViewModel viewModel) =>
          Scaffold(
        body: HomeViewBackground(
          child: Column(
            children: [
              Observer(builder: (_) {
                return WsCard(
                  symbolName: viewModel.wsResponseModels?.last.S ?? '',
                  bp: viewModel.wsResponseModels?.last.bp ?? 0,
                  bs: viewModel.wsResponseModels?.last.bs ?? 0,
                  data: viewModel.barsData ?? [],
                  date: viewModel.wsResponseModels?.last.t ?? '',
                );
              })
            ],
          ),
        ),
      ),
    );
  }
}
