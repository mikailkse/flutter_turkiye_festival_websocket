// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_view_model.dart';

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

  @override
  String toString() {
    return '''
wsResponseModels: ${wsResponseModels},
barsData: ${barsData}
    ''';
  }
}
