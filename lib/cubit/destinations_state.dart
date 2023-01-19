part of 'destinations_cubit.dart';

abstract class DestinationsState extends Equatable {
  const DestinationsState();

  @override
  List<Object> get props => [];
}

class DestinationsInitial extends DestinationsState {}

class DestinationLoading extends DestinationsState {}

class DestinationSuccess extends DestinationsState {
  final List<DestinationModel> destinations;

  DestinationSuccess(this.destinations);

  @override
  List<Object> get props => [destinations];
}

class DestinationFailed extends DestinationsState {
  final String error;

  DestinationFailed(this.error);

  @override
  List<Object> get props => [error];
}
