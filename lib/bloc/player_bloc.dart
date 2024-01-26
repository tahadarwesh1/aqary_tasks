import 'dart:developer';

import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rxdart/rxdart.dart';

import '../data/models/player_model.dart';
import '../data/web_service.dart';

part 'player_event.dart';
part 'player_state.dart';

class PlayerBloc extends Bloc<PlayerEvent, PlayerState> {
  final ApiService _apiService;
  PlayerBloc(this._apiService) : super(PlayerState.initial()) {
    on<GetPlayersEvent>((event, emit) => _getPlayers(event, emit));
    on<SearchPlayersEvent>(
      (event, emit) => _searchPlayers(event, emit),
      transformer: (events, mapper) => events
          .debounceTime(
            const Duration(milliseconds: 700),
          )
          .switchMap(mapper),
    );
  }

  Future<void> _getPlayers(
      GetPlayersEvent event, Emitter<PlayerState> emit) async {
    emit(state.copyWith(isLoading: true));
    final players = await _apiService.getPlayers();
    emit(state.copyWith(players: players, isLoading: false));
  }

  Future<void> _searchPlayers(
      SearchPlayersEvent event, Emitter<PlayerState> emit) async {
    log('test');
    emit(state.copyWith(isLoading: true));
    final players =
        await _apiService.getPlayers(queryParams: {'search': event.query});
    emit(state.copyWith(players: players, isLoading: false));
  }
}
