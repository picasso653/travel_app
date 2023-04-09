// ignore_for_file: prefer_typing_uninitialized_variables, empty_catches

import 'package:bloc/bloc.dart';
import 'package:travle_app/model/data_model.dart';
import 'package:travle_app/services/data_services.dart';

import 'app_cubit_states.dart'
    show
        CubitState,
        DetailState,
        InitialState,
        LoadedState,
        LoadingState,
        WelcomeState;

class AppCubits extends Cubit<CubitState> {
  AppCubits({required this.data}) : super(InitialState()) {
    emit(WelcomeState());
  }
  final DataServices data;
  late final places;

  void getData() async {
    try {
      emit(LoadingState());
      places = await data.getInfo();
      emit(LoadedState(places));
    } catch (e) {}
  }

  detailPage(DataModel data) {
    emit(DetailState(data));
  }

  goHome() {
    emit(LoadedState(places));
  }
}
