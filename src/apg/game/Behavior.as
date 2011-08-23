package apg.game {
	/**
	 * Adds game logic behavior to an actor.
	 * @author Alex Miller
	 */
	public interface Behavior {
		/**
		 * Sets up the behavior's internal state and signal listeners.
		 */
		function Behavior(actor : Actor, board : GameBoard) : void;
	}
}
