package ;

import openfl.display.FPS;
import openfl.utils.Assets;
import openfl.display.Sprite;

class Main extends Sprite {
    private static inline var Y_OFFSET: Int = 100;

    public function new() {
        super();

        stage.frameRate = 30;

        var fps: FPS = new FPS();
        fps.x = 10;
        fps.y = 10;
        addChild(fps);

        var x = 10;
        var y = 5;

        for(i in 0...x) {
            for(j in 0...y) {
                var mcPreload = Assets.getMovieClip ("test:test2");
                mcPreload.x = 100 * i;
                mcPreload.y = Y_OFFSET + 100 * j;
                mcPreload.play();
                addChild(mcPreload);
            }
        }
    }
}
