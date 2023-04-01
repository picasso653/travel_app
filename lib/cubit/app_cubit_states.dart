import 'package:equatable/equatable.dart';

import '../model/data_model.dart';

abstract class CubitState extends Equatable {}

class InitialState extends CubitState {
  @override
  List<Object?> get props => throw [];
}

class WelcomeState extends CubitState {
  @override
  List<Object?> get props => throw [];
}

class LoadingState extends CubitState {
  @override
  List<Object?> get props => throw [];
}

class LoadedState extends CubitState {
  LoadedState(this.places);
  final List<DataModel> places;
  @override
  List<Object?> get props =>  [places];
}
