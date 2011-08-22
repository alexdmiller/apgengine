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
		
		private var _view : DisplayObject;
		private var _physicalModel : PhysicalModel;
		private var _behaviors : Vector.<Behavior>;
		private var _dynamicProperties : Object;
		private var _name : String;

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

		public function get name() : String {
			return _name;
		}
		
		public function set name(value : String) : void {
			_name = value;
		}
		
		public function get physicalModel() : PhysicalModel {
			return _physicalModel;
		}
		
		public function set physicalModel(physicalModel : PhysicalModel) : void {
			_physicalModel = physicalModel;
		}
		
		public function getDynamicProperty(propertyName : String) : * {
			return _dynamicProperties[propertyName];
		}
		
		public function setDynamicProperty(propertyName : String, value : *) : void {
			_dynamicProperties[propertyName] = value;
		}
		
		public function addBehavior(behavior : Behavior) : void {
			
		}
		
		public function removeBehavior(behavior : Behavior) : void {
			
		}
		
		public function toString() : String {
			return "[Actor: '" + name + "']";
		}
	}
}
