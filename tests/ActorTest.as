package {
	import apg.game.Behavior;
	import apg.game.Actor;
	import flash.display.Sprite;
	/**
	 * @author miller
	 */
	public class ActorTest extends Sprite {
		public function ActorTest() {
			behaviorRecievesAction();
			editDynamicProperties();
			error_removeBehavior();
		}
		
		private function behaviorRecievesAction() : void {
			trace("--- behaviorRecievesAction ---");
			var a : Actor = new Actor();
			var b : Behavior = new DummyBehavior();
			a.addBehavior(b);
			a.action("my action");
			a.removeBehavior(b);
			a.action("my action");
		}
		
		private function editDynamicProperties() : void {
			trace("--- editDynamicProperties ---");
			var a : Actor = new Actor();
			a.setDynamicProperty("prop", "val");
			trace(a.getDynamicProperty("prop") == "val");
			trace(a.getDynamicProperty("no prop") == undefined);
		}
		
		private function error_removeBehavior() : void {
			trace("--- error_removeBehavior ---");
			var a : Actor = new Actor();
			var b : Behavior = new DummyBehavior();
			try {
				a.removeBehavior(b);
			} catch(error:Error) {
				trace(error);
			}
		}
	}
}
