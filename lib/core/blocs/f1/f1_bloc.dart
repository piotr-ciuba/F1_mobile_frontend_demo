import 'package:f1_mobile_frontend_demo/core/repositories/f1_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';

part 'f1_event.dart';
part 'f1_state.dart';

class F1Bloc extends Bloc<F1Event, F1State> {
  F1Bloc({
    required this.f1Repository,
  }) : super(F1Initial()) {
    on<F1Event>((event, emit) {});
  }

  final F1Repository f1Repository;
}
