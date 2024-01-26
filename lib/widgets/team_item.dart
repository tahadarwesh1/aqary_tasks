import 'package:flutter/material.dart';
import 'package:project_task/data/models/player_model.dart';

class TeamItem extends StatefulWidget {
  final Team team;
  const TeamItem({
    super.key,
    required this.team,
  });

  @override
  State<TeamItem> createState() => _TeamItemState();
}

class _TeamItemState extends State<TeamItem> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 15.0,
        left: 8.0,
        right: 8.0,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Team:',
            style: TextStyle(fontSize: 30),
          ),
          const SizedBox(height: 10),
          DefaultTextStyle(
            style: const TextStyle(fontSize: 20, color: Colors.black),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Name : ${widget.team.name}',
                ),
                Text(
                  'City : ${widget.team.city}',
                ),
                Text(
                  'Division : ${widget.team.division}',
                ),
                Text(
                  'Conference : ${widget.team.conference}',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
