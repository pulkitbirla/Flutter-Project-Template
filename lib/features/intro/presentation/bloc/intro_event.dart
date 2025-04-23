part of 'intro_bloc.dart';

abstract class IntroEvent extends Equatable {
  const IntroEvent();

  @override
  List<Object> get props => [];
}

class LoadIntro extends IntroEvent {}

class NextPage extends IntroEvent {}

class PreviousPage extends IntroEvent {}

class SkipIntro extends IntroEvent {}
