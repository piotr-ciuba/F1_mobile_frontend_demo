part of 'f1_bloc.dart';

sealed class F1Event extends Equatable {
  const F1Event({
    this.pageLimit = 10,
    this.offset = 0,
  });

  final int pageLimit;
  final int offset;

  @override
  List<Object> get props => [pageLimit];
}

class FetchF1RacesEvent extends F1Event {
  const FetchF1RacesEvent({
    super.pageLimit,
    super.offset,
  });
}

class FetchF1StatusEvent extends F1Event {
  const FetchF1StatusEvent({
    super.pageLimit,
    super.offset,
  });
}

class FetchF1SeasonsEvent extends F1Event {
  const FetchF1SeasonsEvent({
    super.pageLimit,
    super.offset,
  });
}

class FetchF1DriversEvent extends F1Event {
  const FetchF1DriversEvent({
    super.pageLimit,
    super.offset,
  });
}

class FetchF1ResultsEvent extends F1Event {
  const FetchF1ResultsEvent({
    super.pageLimit,
    super.offset,
  });
}

class FetchF1CircuitsEvent extends F1Event {
  const FetchF1CircuitsEvent({
    super.pageLimit,
    super.offset,
  });
}

class FetchF1ConstructorsEvent extends F1Event {
  const FetchF1ConstructorsEvent({
    super.pageLimit,
    super.offset,
  });
}

class FetchF1ClearDataEvent extends F1Event {
  const FetchF1ClearDataEvent({
    super.pageLimit,
    super.offset,
  });
}
