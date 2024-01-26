// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i3;
import 'package:flutter/material.dart' as _i4;
import 'package:project_task/data/models/player_model.dart' as _i5;
import 'package:project_task/screens/player_details_screen.dart' as _i1;
import 'package:project_task/screens/player_screen.dart' as _i2;

abstract class $AppRouter extends _i3.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i3.PageFactory> pagesMap = {
    PlayerDetailsRoute.name: (routeData) {
      final args = routeData.argsAs<PlayerDetailsRouteArgs>();
      return _i3.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i1.PlayerDetailsPage(
          key: args.key,
          player: args.player,
        ),
      );
    },
    PlayerRoute.name: (routeData) {
      return _i3.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.PlayerPage(),
      );
    },
  };
}

/// generated route for
/// [_i1.PlayerDetailsPage]
class PlayerDetailsRoute extends _i3.PageRouteInfo<PlayerDetailsRouteArgs> {
  PlayerDetailsRoute({
    _i4.Key? key,
    required _i5.PlayerModel player,
    List<_i3.PageRouteInfo>? children,
  }) : super(
          PlayerDetailsRoute.name,
          args: PlayerDetailsRouteArgs(
            key: key,
            player: player,
          ),
          initialChildren: children,
        );

  static const String name = 'PlayerDetailsRoute';

  static const _i3.PageInfo<PlayerDetailsRouteArgs> page =
      _i3.PageInfo<PlayerDetailsRouteArgs>(name);
}

class PlayerDetailsRouteArgs {
  const PlayerDetailsRouteArgs({
    this.key,
    required this.player,
  });

  final _i4.Key? key;

  final _i5.PlayerModel player;

  @override
  String toString() {
    return 'PlayerDetailsRouteArgs{key: $key, player: $player}';
  }
}

/// generated route for
/// [_i2.PlayerPage]
class PlayerRoute extends _i3.PageRouteInfo<void> {
  const PlayerRoute({List<_i3.PageRouteInfo>? children})
      : super(
          PlayerRoute.name,
          initialChildren: children,
        );

  static const String name = 'PlayerRoute';

  static const _i3.PageInfo<void> page = _i3.PageInfo<void>(name);
}
