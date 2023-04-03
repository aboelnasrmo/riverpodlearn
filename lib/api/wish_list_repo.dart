import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'wish_list_model.dart';

class WishListRepo {
  final _client = Dio(
    BaseOptions(
      baseUrl: 'https://api.boardgameatlas.com/api',
      queryParameters: {'client_id': 'JLBr5npPhV'},
    ),
  );

  Future<List<BoardGame>> getBoardGames() async {
    final result = await _client.get('/search?limit=20');
    final game = result.data['games'];
    return game.map<BoardGame>((game) => BoardGame.fromJson(game)).toList();
  }
}

final repoProvider = Provider<WishListRepo>((_) => WishListRepo());
