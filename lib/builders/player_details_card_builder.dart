import 'package:flutter/material.dart';
import 'package:project_task/data/models/player_model.dart';
import 'package:project_task/widgets/player_details_card.dart';
import 'package:project_task/widgets/rate_item.dart';
import 'package:project_task/widgets/team_item.dart';

class PlayerDetailsCardBuilder {
  String title = 'Default Title';
  String playerImage = '';
  String playerPosition = '';
  Color backgroundColor = Colors.blue;
  RateItem? rate;
  TeamItem? team;

  PlayerDetailsCardBuilder setTitle(String title) {
    this.title = title;
    return this;
  }

  PlayerDetailsCardBuilder setPlayerPosition(String playerPosition) {
    this.playerPosition = playerPosition;
    return this;
  }

  PlayerDetailsCardBuilder setBackgroundColor(Color backgroundColor) {
    this.backgroundColor = backgroundColor;
    return this;
  }

  PlayerDetailsCardBuilder setRate() {
    rate = const RateItem();
    return this;
  }

  PlayerDetailsCardBuilder setTeam(Team? teamModel) {
    team =  TeamItem(
      team: teamModel!,
    );
    return this;
  }

  PlayerDetailsCard build() {
    return PlayerDetailsCard(
      title: title,
      playerImage: playerImage,
      playerPosition: playerPosition,
      backgroundColor: backgroundColor,
      rate: rate,
      team: team,
    );
  }
}