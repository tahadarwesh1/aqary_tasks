part of 'player_bloc.dart';

final class PlayerState {
  final List<PlayerModel> players;
  final bool isLoading;
  final String errorMessage;

  const PlayerState({
    required this.players,
    required this.isLoading,
    required this.errorMessage,
  });

  factory PlayerState.initial() {
    return const PlayerState(
      players: [],
      isLoading: false,
      errorMessage: '',
    );
  }

  PlayerState copyWith({
    List<PlayerModel>? players,
    bool? isLoading,
    String? errorMessage,
  }) {
    return PlayerState(
      players: players ?? this.players,
      isLoading: isLoading ?? this.isLoading,
      errorMessage: errorMessage ?? this.errorMessage,
    );
  }
}