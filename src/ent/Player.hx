package ent;

import h2d.Anim;
import h2d.Object;
import hxd.Res;

class Player extends Object {
    var width: Int;
    var height: Int;
    var sizeAmout = 16;

    var anim: Anim;
    var animScale = 3;

    public function new(x: Float, y: Float, screen: GameScreen) {
        super();

        this.x = x;
        this.y = y;
        this.width = sizeAmout;
        this.height = sizeAmout;

        anim = new Anim(Res.player.player.toTile().split(3), 0, screen);
        anim.currentFrame = 1;
        anim.x = this.x - this.width * animScale / 2;
        anim.y = this.y - this.height * animScale / 2;
        anim.scale(animScale);
    }
}