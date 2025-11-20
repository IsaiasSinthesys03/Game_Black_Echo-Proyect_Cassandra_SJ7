import 'package:echo_world/game/black_echo_game.dart';
import 'package:flame/game.dart';

class TestGame extends FlameGame {
  TestGame() {
    images.prefix = '';
  }
}

class TestBlackEchoGame extends BlackEchoGame {
  TestBlackEchoGame({
    required super.gameBloc,
    required super.checkpointBloc,
    required super.loreBloc,
  }) {
    images.prefix = '';
  }

  @override
  Future<void> onLoad() async {
    // Skip loading game components for UI tests
  }
}
