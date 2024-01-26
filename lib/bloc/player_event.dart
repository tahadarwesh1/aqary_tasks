part of 'player_bloc.dart';

abstract class PlayerEvent extends Equatable {}

class GetPlayersEvent extends PlayerEvent {
  @override
  List<Object?> get props => [];
}

class SearchPlayersEvent extends PlayerEvent {
  final String query;

  SearchPlayersEvent({required this.query});

  @override
  List<Object?> get props => [query];
}
