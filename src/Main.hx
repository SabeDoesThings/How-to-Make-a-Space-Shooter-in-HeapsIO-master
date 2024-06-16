class Main extends hxd.App {
    var gameScreen: GameScreen;

    override function init() {
        super.init();

        gameScreen = new GameScreen();
        setScene2D(gameScreen);
    }

    override function update(dt: Float) {
        super.update(dt);

        gameScreen.update(dt);
    }

    public static var inst(get, null): Main;
    static function get_inst(): Main {
        if (inst == null)
            inst = new Main();

        return inst;
    }
    static function main() {
        #if sys
        hxd.Res.initLocal(); // important! allows the app access to our game's resource files: images (sprites), audio, etc.
        #else
        hxd.Res.initEmbed(); // use hxd.Res.initEmbed(); for html5/js
        #end

        inst;
    }
}
