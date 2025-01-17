part of 'navigation_bar_bloc.dart';

sealed class NavigationBarEvent extends Equatable {
  const NavigationBarEvent();

  @override
  List<Object> get props => [];
}

class IndexChangedEvent extends NavigationBarEvent {
  const IndexChangedEvent({required this.index});
  final int index;

  @override
  List<Object> get props => [index];
}
