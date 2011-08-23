package apg.physics {
	import apg.game.Actor;
	/**
	 * Represents the properties of a 2d physical object. The model is associated
	 * with a single Actor object. 
	 * @author Alex Miller
	 */
	public interface PhysicalModel {
		/**
		 * Construct a PhysicalModel associated with the passed Actor object.
		 */
		function PhysicalModel() : void;
		
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
		 * The x component of the object's acceleration.
		 */
		function get ax() : Number;
		function set ax(value : Number) : void;
		
		/**
		 * The y component of the object's acceleration.
		 */
		function get ay() : Number;
		function set ay(value : Number) : void;
		
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
	}
}
