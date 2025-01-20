import 'package:f1_mobile_frontend_demo/core/repositories/f1_repository.dart';
import 'package:f1_mobile_frontend_demo/models/mr_data/mr_data.dart';
import 'package:f1_mobile_frontend_demo/models/race/race.dart';
import 'package:f1_mobile_frontend_demo/models/race_table/race_table.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';

part 'f1_event.dart';
part 'f1_state.dart';

class F1Bloc extends Bloc<F1Event, F1State> {
  F1Bloc({
    required this.f1Repository,
  }) : super(F1Initial()) {
    on<FetchF1RacesEvent>((event, emit) => _fetchRaces(event, emit));
  }

  final F1Repository f1Repository;

  Future<void> _fetchRaces(
    F1Event event,
    Emitter<F1State> emit,
  ) async {
    try {
      emit(
        F1FetchingInProgress(
          mrData: state.mrData,
          pageIndex: state.pageIndex,
          pageSize: state.pageSize,
        ),
      );

      List<Race>? responseList = await f1Repository.getF1Races(
        pageLimit: event.pageLimit,
        offset: event.offset,
      );
      late MrData updatedMrData;

      if (state.mrData == null) {
        updatedMrData = MrData(
          raceTable: RaceTable(races: responseList),
        );
      } else if (state.mrData?.raceTable?.races == null ||
          state.mrData!.raceTable!.races!.isEmpty) {
        updatedMrData = state.mrData!.copyWith(
          raceTable: RaceTable(races: responseList),
        );
      } else {
        List<Race>? updatedRaceList =
            (state.mrData!.raceTable!.races! + responseList!).toSet().toList();
        updatedMrData = state.mrData!.copyWith(
          raceTable: RaceTable(races: updatedRaceList),
        );
      }

      emit(
        F1StateChanged(
          mrData: updatedMrData,
          pageSize: state.pageSize,
          pageIndex: _adjustPageIndex(
            updatedMrData.raceTable!.races!.length,
            state.pageSize,
            state.pageIndex,
          ),
        ),
      );
    } catch (e) {
      emit(
        F1FetchingFailed(
          mrData: state.mrData,
          pageIndex: state.pageIndex,
          pageSize: state.pageSize,
          error: e.toString(),
        ),
      );
    }
  }

  int _adjustPageIndex(int length, int pageSize, int currentPageIndex) {
    int totalPages = (length / pageSize).ceil();

    if (currentPageIndex >= totalPages) {
      return totalPages - 1;
    } else {
      return currentPageIndex;
    }
  }
}
