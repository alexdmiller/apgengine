package apg.physics {
	import apg.game.Actor;
	/**
	 * Represents the properties of a 2d physical object. The model is associated
	 * with a single Actor object. 
	 * @author Alex Miller
	 */
	public interface PhysicalModel {
		/**
		 * The x position of the object.
		 */
		function get x() : Number;
		function set x(value : Number) : void;
		
		/**
		 * The y position of the object.
		 */
		function get y() : Number;
		function set y(value : Number) : void;
		
		/**
		 * The x component of the object's velocity.
		 */
		function get vx() : Number;
		function set vx(value : Number) : void;
		
		/**
		 * The y component of the object's velocity.
		 */
		function get vy() : Number;
		function set vy(value : Number) : void;
		
		/**
		 * Object's physical width.
		 */
		function get width() : Number;
		function set width(value : Number) : void;
		
		/**
		 * Object's physical height.
		 */
		function get height() : Number;
		function set height(value : Number) : void;
		
		/**
		 * The object's rotation in radians.
		 */
		function get angle() : Number;
		function set angle(value : Number) : void;
		
		/**
		 * The Actor which the PhysicalModel contains the physical properties of.
		 */
		function get actor() : Actor;
		function set actor(value : Actor) : void;
		
		/**
		 * Applies a force to the center of the of mass of the object.
		 */
		function applyForce(x : Number, y : Number) : void;
	}
}
