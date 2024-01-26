import 'package:flutter/material.dart';
import 'package:project_task/data/models/player_model.dart';
import 'package:project_task/widgets/player_card.dart';

class ListPlayersCard extends StatelessWidget {
  final List<PlayerModel> players;
  const ListPlayersCard({
    super.key,
    required this.players,
  });

  @override
  Widget build(BuildContext context) {
    return SliverList.separated(
      itemCount: players.length,
      separatorBuilder: (context, index) => const SizedBox(
        height: 25,
      ),
      itemBuilder: (context, index) {
        final player = players[index];
        return PlayerCard(player: player);
      },
    );
  }
}