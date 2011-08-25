package apg.game {
	import org.osflash.signals.Signal;

	/**
	 * Consists of a collection of actors. To be extended for specific games.
	 * @author Alex Miller
	 */
	public class GameBoard {
		/**
		 * Dispatched when an actor is added to the GameBoard.
		 */
		public var actorAdded : Signal;
		/**
		 * Dispatched when an actor is removed from the GameBoard.
		 */
		public var actorRemoved : Signal;
		
		// a vector of all actors contained within the GameBoard
		private var _actors : Vector.<Actor>;

		/**
		 * Constructs a GameBoard. Upon construction, the GameBoard has no Actors.
		 */
		public function GameBoard() {
			_actors = new Vector.<Actor>();
			actorAdded = new Signal(Actor);
			actorRemoved = new Signal(Actor);
		}

		/**
		 * Adds the passed Actor to the GameBoard. Dispatches the actorAdded signal.
		 * Throws an error if an Actor with the same name has already been added to the GameBoard.
		 */
		public function addActor(actor : Actor) : void {
			if (containsActor(actor)) {
				throw new Error(actor + " already exists within GameBoard.");
			}
			if (actor.name != "" && containsActorWithName(actor.name)) {
				throw new Error("Cannot add two actors with the same name ('" + actor.name + "') to a GameBoard.");
			}
			_actors.push(actor);
			actor.gameBoard = this;
			actorAdded.dispatch(actor);
		}

		/**
		 * Removes the passed Actor from the GameBoard. Dispatches the actorRemoved signal.
		 * Throws an error if the Actor could not be found in the GameBoard.
		 */
		public function removeActor(actor : Actor) : void {
			var index : int = _actors.indexOf(actor);
			if (index < 0) {
				throw new Error("Cannot remove actor " + actor + " because it is not contained within the GameBoard.");
			}
			_actors.splice(index, 1);
			actor.gameBoard = null;
			actorRemoved.dispatch(actor);
		}

		/**
		 * Returns the Actor in the GameBoard that has the passed name. Returns null if no
		 * such Actor exists.
		 */
		public function getActorWithName(name : String) : Actor {
			if (name == "") {
				return null;
			}
			for each (var actor : Actor in _actors) {
				if (actor.name == name) {
					return actor;
				}
			}
			return null;
		}

		/**
		 * Returns true if an actor with the passed name is currently added to the GameBoard.
		 */
		public function containsActorWithName(name : String) : Boolean {
			return getActorWithName(name) != null;
		}
	
		/**
		 * Returns true if the passed actor is contained in the GameBoard.
		 */
		public function containsActor(actor : Actor) : Boolean {
			return _actors.indexOf(actor) >= 0;
		}
		
		/**
		 * Sends the passed action to each Actor within the GameBoard.
		 */
		public function dispatchAction(actionName : String, info : Object) : void {
			for each (var actor : Actor in _actors) {
				actor.action(actionName, info);
			}
		}
		
		public function updateActorViews() : void {
			for each (var actor : Actor in _actors) {
				actor.updateView();
			}
		}

		public function get actors() : Vector.<Actor> {
			return _actors;
		}
	}
}
