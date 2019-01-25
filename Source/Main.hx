package ;

import openfl.utils.Assets;
import openfl.utils.AssetLibrary;
import openfl.display.Sprite;

class Main extends Sprite {
    public function new() {
        super();

        // Example 1. Preloading library works correctly
        var mcPreload = Assets.getMovieClip ("testPreload:test1");
        mcPreload.x = 100;
        mcPreload.y = 100;
        addChild(mcPreload);

        // Example 2. Runtime loading causes an error
        var future = AssetLibrary.loadFromFile ("testRuntime/Test.bundle");
        future.onComplete (library_onComplete);
        future.onError (library_onError);
    }

    private function library_onComplete (library:AssetLibrary):Void {
        var mcRuntime = library.getMovieClip ("test1");
        mcRuntime.x = 200;
        mcRuntime.y = 200;
        addChild (mcRuntime);
    }

    private function library_onError (err:Dynamic):Void {
        trace("Error " + err);
    }
}
