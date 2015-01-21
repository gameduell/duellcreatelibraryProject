import scene.SampleTestScene;
import game_engine.core.GameEngine;

import duell.DuellKit;

class MainEngine
{
    private var gameEngine: GameEngine;

    public function new()
    {
        DuellKit.initialize(startApp);
    }

    private function startApp(): Void
    {
        gameEngine = new GameEngine();
        gameEngine.presentScene(new SampleTestScene());
    }

    /// MAIN
    static var _main: MainEngine;
    static function main(): Void
    {
        _main = new MainEngine();
    }
}