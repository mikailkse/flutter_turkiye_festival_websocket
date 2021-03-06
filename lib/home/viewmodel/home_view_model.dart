import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
import 'package:web_socket_channel/io.dart';
import 'package:web_socket_channel/web_socket_channel.dart';

import '../../core/constants/app/app_constants.dart';
import '../model/ws_auth_model.dart';
import '../model/ws_response_model.dart';
import '../model/ws_subscribe_model.dart';

part 'home_view_model.g.dart';

class HomeViewModel = _HomeViewModelBase with _$HomeViewModel;

abstract class _HomeViewModelBase with Store {
  void setContext(BuildContext context) => context = context;
  void init() {
    webSocketChannel();
  }

  @observable
  ObservableList<WSResponseModel>? wsResponseModels;

  WebSocketChannel? channel;

  IOWebSocketChannel? channell;

  void webSocketChannel() {
    channel = WebSocketChannel.connect(
      Uri.parse(ApplicationConstants.url),
    );
    channel?.sink.add(
      jsonEncode(
        WSAuthModel(
          action: 'auth',
          key: 'CK2BFRT97545ZUU6INHV',
          secret: 'C4vDZDhuWrHwhlzohpxr6UB5bYM6hy0rR5LjL6it',
        ).toJson(),
      ),
    );
    channel?.sink.add(
      jsonEncode(
        WSSubscribeModel(
          action: 'subscribe',
          trades: ["BTCUSD"],
          quotes: ["BTCUSD"],
          bars: ["BTCUSD"],
        ).toJson(),
      ),
    );
    channel?.stream.listen(
      (data) {
        dataConnet(
          WSResponseModel.fromJson((json.decode(data) as List)[0]),
        );
      },
    );
  }

  void dataConnet(WSResponseModel data) {
    if (data.x == 'FTXU') {
      wsResponseModels?.add(data);
      wsResponseModels = ObservableList.of([...wsResponseModels ?? []]);
    }
  }

  @computed
  ObservableList<double>? get barsData => ObservableList.of(wsResponseModels
          ?.skip(
              wsResponseModels!.length < 50 ? 0 : wsResponseModels!.length - 50)
          .take(200)
          .map<double>((e) => e.bp ?? 0)
          .toList() ??
      []);
}
