package apg.game {
	/**
	 * Adds game logic behavior to an actor.
	 * @author Alex Miller
	 */
	public interface Behavior {
		/**
		 * Handles an action.
		 */
		function action(actionName : String, info : Object = null) : void;
	}
}
