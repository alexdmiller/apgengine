package apg.game {
	import flash.display.DisplayObject;
	/**
	 * @author Alex Miller
	 */
	public class Actor {
		private var _view : DisplayObject;
		private var _dynamicProperties : Object;
		private var _name : String;

		public function Actor(name : String) {
			_name = name;
			_dynamicProperties = new Object();
		}

		public function get view() : DisplayObject {
			return _view;
		}

		public function set view(view : DisplayObject) : void {
			_view = view;
		}

		public function get dynamicProperties() : Object {
			return _dynamicProperties;
		}

		public function get name() : String {
			return _name;
		}

		public function toString() : String {
			return "[Actor: '" + name + "']";
		}
	}
}
