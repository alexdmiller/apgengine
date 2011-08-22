package apg.game {
	import apg.physics.PhysicalModel;

	import org.osflash.signals.Signal;

	import flash.display.DisplayObject;

	/**
	 * The Actor class is used to manage the different pieces of an in-game interactive
	 * object. It ties together the game object's view, physical model, game defined
	 * properties, and behaviors.
	 * 
	 * @author Alex Miller
	 */
	public class Actor {
		/**
		 * Dispatched when the name of the Actor is changed. Passes the new name of the
		 * actor to the event listener.
		 */
		public var nameChanged : Signal;
		
		/**
		 * Dispatched when a dynamic property is created, removed or changed. Passes the
		 * dynamicProperties object to the event listener.
		 */
		public var dynamicPropertiesChanged : Signal;
		
		/**
		 * Dispatched when a behavior is added. Passes the created behavior to the event
		 * listener.
		 */
		public var behaviorAdded : Signal;
		
		/**
		 * Dispatched when a behavior is removed. Passes the removed behvaior to the event
		 * listener.
		 */
		public var behaviorRemoved : Signal;
		
		// visual representation of actor
		private var _view : DisplayObject;
		// physical properties of actor
		private var _physicalModel : PhysicalModel;
		// list of behaviors that control actor
		private var _behaviors : Vector.<Behavior>;
		// actor's properties
		private var _dynamicProperties : Object;
		// actor's name
		private var _name : String;

		/**
		 * Constructs an Actor with the passed name. By default, no dynamic properties or 
		 * behaviors have been added.
		 */
		public function Actor(name : String) {
			// instantiate signals
			nameChanged = new Signal(String);
			dynamicPropertiesChanged = new Signal(Object);
			behaviorAdded = new Signal(Behavior);
			behaviorRemoved = new Signal(Behavior);

			// setup fields
			_name = name;
			_dynamicProperties = new Object();
			_behaviors = new Vector.<Behavior>();
		}

		/**
		 * The visual representation of the Actor.
		 */
		public function get view() : DisplayObject {
			return _view;
		}

		public function set view(view : DisplayObject) : void {
			_view = view;
		}

		/**
		 * The Actor's name.
		 */
		public function get name() : String {
			return _name;
		}

		public function set name(value : String) : void {
			_name = value;
		}

		/**
		 * Represents the physical properties of the actor, such as position, velocity,
		 * acceleration and angle.
		 */
		public function get physicalModel() : PhysicalModel {
			return _physicalModel;
		}

		public function set physicalModel(physicalModel : PhysicalModel) : void {
			_physicalModel = physicalModel;
		}

		/**
		 * Returns the value of the specified dynamic property of the actor. Dynamic properties
		 * can be used to store meta-information about the actor.
		 */
		public function getDynamicProperty(propertyName : String) : * {
			return _dynamicProperties[propertyName];
		}

		/**
		 * Sets the value of the specified dynamic property of the actor. Dynamic properties
		 * can be used to store meta-information about the actor. Dispatches the dynamicPropertiesChanged
		 * signal.
		 */
		public function setDynamicProperty(propertyName : String, value : *) : void {
			_dynamicProperties[propertyName] = value;
		}

		/**
		 * Adds the passed Behavior to the actor, and calls the Behavior's initalize() function.
		 * Dispatches the behaviorAdded signal.
		 */
		public function addBehavior(behavior : Behavior) : void {
		}

		/**
		 * Removes the passed Behavior from the actor and dispatches the behaviorRemoved signal.
		 */
		public function removeBehavior(behavior : Behavior) : void {
		}

		/**
		 * Returns a String representation of the Actor.
		 */
		public function toString() : String {
			return "[Actor: '" + name + "']";
		}
	}
}
