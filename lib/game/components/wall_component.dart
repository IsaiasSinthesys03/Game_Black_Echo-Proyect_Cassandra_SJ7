import 'package:flame/collisions.dart';
import 'package:flame/components.dart';
// import 'package:flutter/painting.dart'; // OBSOLETO: Ya no renderiza

/// WallComponent ahora solo maneja colisiones.
/// El renderizado se hace vía BatchGeometryRenderer en LevelManager
/// para optimizar draw calls (1 Picture vs N drawRect).
class WallComponent extends PositionComponent with CollisionCallbacks {
  WallComponent({
    required Vector2 position,
    required Vector2 size,
    this.destructible = false,
  }) : super(position: position, size: size, anchor: Anchor.topLeft);

  final bool destructible;

  @override
  Future<void> onLoad() async {
    await add(RectangleHitbox());
  }

  void destroy() {
    if (destructible) {
      removeFromParent();
    }
  }
}
