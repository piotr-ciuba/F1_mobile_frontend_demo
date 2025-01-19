part of 'f1_bloc.dart';

sealed class F1Event extends Equatable {
  const F1Event({
    this.pageLimit = 10,
  });

  final int pageLimit;

  @override
  List<Object> get props => [pageLimit];
}

class FetchF1RacesEvent extends F1Event {
  const FetchF1RacesEvent({
    super.pageLimit,
  });
}

class FetchF1StatusEvent extends F1Event {
  const FetchF1StatusEvent({
    super.pageLimit,
  });
}

class FetchF1SeasonsEvent extends F1Event {
  const FetchF1SeasonsEvent({
    super.pageLimit,
  });
}

class FetchF1DriversEvent extends F1Event {
  const FetchF1DriversEvent({
    super.pageLimit,
  });
}

class FetchF1ResultsEvent extends F1Event {
  const FetchF1ResultsEvent({
    super.pageLimit,
  });
}

class FetchF1CircuitsEvent extends F1Event {
  const FetchF1CircuitsEvent({
    super.pageLimit,
  });
}

class FetchF1ConstructorsEvent extends F1Event {
  const FetchF1ConstructorsEvent({
    super.pageLimit,
  });
}

class FetchF1ClearDataEvent extends F1Event {
  const FetchF1ClearDataEvent({
    super.pageLimit,
  });
}
