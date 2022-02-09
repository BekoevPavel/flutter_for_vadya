part of 'main_bloc.dart';

abstract class MainEvent extends Equatable {
  //const MainEvent();
  const MainEvent();
  @override
  List<Object> get props => [];
}

class MainInitialEvent extends MainEvent {}

class OpenWishEvent extends MainEvent {}
