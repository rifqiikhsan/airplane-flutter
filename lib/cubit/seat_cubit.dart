import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'seat_state.dart';

class SeatCubit extends Cubit<List<String>> {
  SeatCubit() : super([]);

  void selectSeat(String id) {
    print('prev state: $state');
    state.add(id);
    print('new state: $state');
    emit(state);
  }
}
