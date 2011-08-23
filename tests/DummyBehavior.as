package {
	import apg.game.Behavior;
	/**
	 * @author miller
	 */
	public class DummyBehavior implements Behavior {
		public function action(actionName : String, info : Object = null) : void {
			trace(this + ": action(" + actionName + ", " + info + ")");
		}
	}
}
