package {
	import apg.game.Behavior;
	import apg.game.Actor;
	import flash.display.Sprite;
	/**
	 * @author miller
	 */
	public class ActorTest extends Sprite {
		public function ActorTest() {
			var a : Actor = new Actor("My actor");
			trace(a);
		}
		
		private function error_behaviorRemoved() : void {
			var a : Actor = new Actor();
			var b : Behavior = new DummyBehavior();
		}
	}
}
