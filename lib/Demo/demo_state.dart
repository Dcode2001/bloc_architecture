part of 'demo_bloc.dart';

@immutable
abstract class DemoState {}

class DemoInitial extends DemoState {}

class InitialState extends DemoState
{
  int cnt;

  InitialState(this.cnt);
}