part of 'demo_bloc.dart';

@immutable
abstract class DemoEvent {}


class InitEvent extends DemoEvent
{
  int i;

  InitEvent(this.i);
}

class IncrementEvent extends DemoEvent
{

}

class DecrementEvent extends DemoEvent
{
}