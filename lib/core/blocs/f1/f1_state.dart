part of 'f1_bloc.dart';

sealed class F1State extends Equatable {
  const F1State({
    this.mrData,
    this.pageIndex = 0,
    this.pageSize = 10,
  });

  final MrData? mrData;
  final int pageIndex;
  final int pageSize;

  @override
  List<Object?> get props => [mrData, pageIndex, pageSize];
}

final class F1Initial extends F1State {
  const F1Initial();
}

final class F1FetchingInProgress extends F1State {
  const F1FetchingInProgress({
    required super.mrData,
    required super.pageIndex,
    required super.pageSize,
  });
}

final class F1FetchingFailed extends F1State {
  const F1FetchingFailed({
    required super.mrData,
    required super.pageIndex,
    required super.pageSize,
    required this.error,
  });

  final String error;
}

final class F1StateChanged extends F1State {
  const F1StateChanged({
    required super.mrData,
    required super.pageIndex,
    required super.pageSize,
  });
}
