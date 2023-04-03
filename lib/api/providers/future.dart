import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpodlearn/api/wish_list_model.dart';
import 'package:riverpodlearn/api/wish_list_repo.dart';

final wishListFutureProvider = FutureProvider<List<BoardGame>>((ref) {
  final repo = ref.read(repoProvider);
  return repo.getBoardGames();
});
