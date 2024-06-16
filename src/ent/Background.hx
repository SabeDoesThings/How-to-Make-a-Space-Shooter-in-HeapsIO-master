package ent;

import hxd.Res;
import h2d.Bitmap;

class Background extends Bitmap {
    public function new(x: Float, y: Float) {
        super();

        this.x = x;
        this.y = y;
        this.width = 64;
        this.height = 128;
        this.tile = Res.bg.bg.toTile();
        this.scale(5);
    }
}