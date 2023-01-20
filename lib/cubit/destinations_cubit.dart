import 'package:airplane/models/destinations_model.dart';
import 'package:airplane/services/destination_service.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'destinations_state.dart';

class DestinationsCubit extends Cubit<DestinationsState> {
  DestinationsCubit() : super(DestinationsInitial());

  void fetchDestinations() async {
    try {
      emit(DestinationLoading());

      List<DestinationModel> destinations =
          await DestinationServices().fetchDestinations();

      emit(DestinationSuccess(destinations));
    } catch (e) {
      emit(DestinationFailed(e.toString()));
    }
  }
}
