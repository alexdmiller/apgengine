package apg.physics {
	import apg.game.Actor;
	/**
	 * @author miller
	 */
	public interface PhysicalModel {
		function PhysicalModel(actor : Actor) : void;
		function get x() : Number;
		function set x(value : Number) : void;
		function get y() : Number;
		function set y(value : Number) : void;
		function get vx() : Number;
		function set vx(value : Number) : void;
		function get vy() : Number;
		function set vy(value : Number) : void;
		function get ax() : Number;
		function set ax(value : Number) : void;
		function get ay() : Number;
		function set ay(value : Number) : void;
		function get angle() : Number;
		function set angle(value : Number) : void;
		function update() : void;
	}
}
