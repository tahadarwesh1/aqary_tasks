import 'package:flutter/material.dart';
import 'package:project_task/widgets/rate_item.dart';
import 'package:project_task/widgets/team_item.dart';

class PlayerDetailsCard extends StatefulWidget {
  final String title;
  final String playerImage;
  final String playerPosition;
  final Color backgroundColor;
  final RateItem? rate;
  final TeamItem? team;

  const PlayerDetailsCard({
    super.key,
    required this.title,
    required this.playerImage,
    required this.playerPosition,
    required this.backgroundColor,
    this.rate, this.team,
  });

  @override
  State<PlayerDetailsCard> createState() => _PlayerDetailsCardState();
}

class _PlayerDetailsCardState extends State<PlayerDetailsCard> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: const EdgeInsets.all(15),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: widget.backgroundColor,
          ),
          width: double.infinity,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Name: ${widget.title}',
                style: const TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              Text(
                'Position: ${widget.playerPosition}',
                style: const TextStyle(
                  fontSize: 18,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
        widget.rate ?? const SizedBox.shrink(),
        widget.team ?? const SizedBox.shrink(),
      ],
    );
  }
}
