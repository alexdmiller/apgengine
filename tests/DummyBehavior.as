package {
	import apg.game.Actor;
	import apg.game.Behavior;
	/**
	 * @author miller
	 */
	public class DummyBehavior implements Behavior {
		public function action(actionName : String, actor : Actor, info : Object = null) : void {
			trace(this + ": action(" + actionName + ", " + info + ")");
		}
	}
}
