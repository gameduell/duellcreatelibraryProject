package scene;

import ash.core.Entity;
import game_engine.core.Scene;
import game_engine.systems.Camera2DSystem;
import game_engine.systems.RelationSystem;
import game_engine.systems.Sprite2DSystem;
import game_engine.systems.TextSystem;
import game_engine.systems.Transform2DSystem;
import game_engine.systems.ui.SimpleButtonSystem;

class SampleTestScene extends Scene
{
    override public function initScene(): Void
    {
        registerSystems();
    }

    private function registerSystems(): Void
    {
        // Object Creation Systems
        root.engine.addSystem(new SimpleButtonSystem(), 0);
        root.engine.addSystem(new Sprite2DSystem(), 1);
        root.engine.addSystem(new TextSystem(), 2);

        // Processing Systems
        root.engine.addSystem(new Transform2DSystem(), 3);
        root.engine.addSystem(new RelationSystem(), 4);
        root.engine.addSystem(new Camera2DSystem(), 5);
    }
}
