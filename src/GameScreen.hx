package;

import ent.Player;
import ent.Background;
import h2d.Scene;

class GameScreen extends Scene {
    var bg: Background;
    var player: Player;

    public function new() {
        super();

        bg = new Background(0, 0);
        this.addChild(bg);

        player = new Player(this.width / 2, this.height / 2, this);
        this.addChild(player);
    }

    public function update(dt: Float) {
        
    }
}