import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:project_task/data/models/player_model.dart';
import 'package:project_task/utils/auto_route.gr.dart';

import 'custom_card.dart';

class PlayerCard extends StatelessWidget {
  final PlayerModel player;

  const PlayerCard({super.key, required this.player});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: Colors.transparent,
      highlightColor: Colors.transparent,
      onTap: () {
        context.pushRoute(
          PlayerDetailsRoute(
            player: player,
          ),
        );
      },
      child: AspectRatio(
        aspectRatio: 16 / 9,
        child: CustomPaint(
          painter: CustomCard(),
          child: Padding(
            padding: const EdgeInsets.all(25.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'First Name: ${player.firstName}',
                  style: const TextStyle(fontSize: 20),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  'Last Name: ${player.lastName}',
                  style: const TextStyle(fontSize: 20),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  'Position: ${player.position}',
                  style: const TextStyle(fontSize: 20),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
