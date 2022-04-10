// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_viewmodel.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$HomeViewModel on _HomeViewModelBase, Store {
  Computed<ObservableList<double>?>? _$barsDataComputed;

  @override
  ObservableList<double>? get barsData => (_$barsDataComputed ??=
          Computed<ObservableList<double>?>(() => super.barsData,
              name: '_HomeViewModelBase.barsData'))
      .value;

  final _$wsResponseModelsAtom =
      Atom(name: '_HomeViewModelBase.wsResponseModels');

  @override
  ObservableList<WSResponseModel>? get wsResponseModels {
    _$wsResponseModelsAtom.reportRead();
    return super.wsResponseModels;
  }

  @override
  set wsResponseModels(ObservableList<WSResponseModel>? value) {
    _$wsResponseModelsAtom.reportWrite(value, super.wsResponseModels, () {
      super.wsResponseModels = value;
    });
  }

  final _$channelAtom = Atom(name: '_HomeViewModelBase.channel');

  @override
  WebSocketChannel? get channel {
    _$channelAtom.reportRead();
    return super.channel;
  }

  @override
  set channel(WebSocketChannel? value) {
    _$channelAtom.reportWrite(value, super.channel, () {
      super.channel = value;
    });
  }

  final _$firstPriceAtom = Atom(name: '_HomeViewModelBase.firstPrice');

  @override
  double? get firstPrice {
    _$firstPriceAtom.reportRead();
    return super.firstPrice;
  }

  @override
  set firstPrice(double? value) {
    _$firstPriceAtom.reportWrite(value, super.firstPrice, () {
      super.firstPrice = value;
    });
  }

  final _$dummyAtom = Atom(name: '_HomeViewModelBase.dummy');

  @override
  bool get dummy {
    _$dummyAtom.reportRead();
    return super.dummy;
  }

  @override
  set dummy(bool value) {
    _$dummyAtom.reportWrite(value, super.dummy, () {
      super.dummy = value;
    });
  }

  final _$_HomeViewModelBaseActionController =
      ActionController(name: '_HomeViewModelBase');

  @override
  void dataConnect(WSResponseModel data) {
    final _$actionInfo = _$_HomeViewModelBaseActionController.startAction(
        name: '_HomeViewModelBase.updateChart');
    try {
      return super.dataConnect(data);
    } finally {
      _$_HomeViewModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
wsResponseModels: ${wsResponseModels},
channel: ${channel},
firstPrice: ${firstPrice},
dummy: ${dummy},
barsData: ${barsData}
    ''';
  }
}
