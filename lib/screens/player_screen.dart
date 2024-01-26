import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project_task/builders/conditional_builder.dart';
import 'package:project_task/data/web_service.dart';
import 'package:project_task/utils/extension.dart';
import 'package:project_task/widgets/list_players_card.dart';
import 'package:sliver_tools/sliver_tools.dart';

import '../bloc/player_bloc.dart';
import '../widgets/header_painter.dart';
import '../widgets/search_field.dart';

@RoutePage()
class PlayerPage extends StatelessWidget {
  const PlayerPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => PlayerBloc(ApiService())..add(GetPlayersEvent()),
      child: const PlayerView(),
    );
  }
}

class PlayerView extends StatelessWidget {
  const PlayerView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverPadding(
              padding: const EdgeInsets.symmetric(
                horizontal: 25,
                vertical: 15,
              ),
              sliver: SearchField(
                onChanged: (value) {
                  context
                      .read<PlayerBloc>()
                      .add(SearchPlayersEvent(query: value));
                },
              ).toSliver(),
            ),
            MultiSliver(
              children: [
                SliverPinnedHeader(
                  child: CustomPaint(
                    size: const Size.fromHeight(120),
                    painter: PrettyHeaderPainter(),
                  ),
                ),
                BlocBuilder<PlayerBloc, PlayerState>(
                  builder: (context, state) {
                    if (state.isLoading) {
                      return const SliverFillRemaining(
                        child: Center(
                          child: CircularProgressIndicator(),
                        ),
                      );
                    }
                    return SliverPadding(
                      padding: const EdgeInsets.only(
                        right: 25.0,
                        left: 25.0,
                        bottom: 25,
                      ),
                      sliver: ConditionalBuilder(
                        condition: state.players.isNotEmpty,
                        onBuild: ListPlayersCard(
                          players: state.players,
                        ),
                        onFeedBack: const SliverFillRemaining(
                          child: Center(
                            child: Text(
                              'No Players Found',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
