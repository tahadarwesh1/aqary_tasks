import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:project_task/builders/player_details_card_builder.dart';
import 'package:project_task/data/models/player_model.dart';

@RoutePage()
class PlayerDetailsPage extends StatelessWidget {
  final PlayerModel player;
  const PlayerDetailsPage({super.key, required this.player});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Player Details'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: PlayerDetailsCardBuilder()
            .setTitle('${player.firstName} ${player.lastName}')
            .setBackgroundColor(Colors.blue)
            .setPlayerPosition(player.position)
            .setRate()
            .setTeam(player.team)
            .build(),
      ),
    );
  }
}

