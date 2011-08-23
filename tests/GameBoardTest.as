package {
	import apg.game.Actor;
	import apg.game.GameBoard;
	import flash.display.Sprite;
	/**
	 * @author miller
	 */
	public class GameBoardTest extends Sprite {
		public function GameBoardTest() {
			error_duplicateActor();
			error_sameNameActors();
			getActor();
			getActorAfterNameChange();
		}
		
		private function error_duplicateActor() : void {
			trace("--- error_duplicateActor ---");
			try {
				var b : GameBoard = new GameBoard();
				var a : Actor = new Actor("my actor");
				b.addActor(a);
				b.addActor(a);		
			} catch(error:Error) {
				trace(error);
			}	
		}
		
		private function error_sameNameActors() : void {
			trace("--- error_sameNameActors ---");
			try {
				var b : GameBoard = new GameBoard();
				var a1 : Actor = new Actor("my actor");
				var a2 : Actor = new Actor("my actor");
				b.addActor(a1);
				b.addActor(a2);
			} catch(error:Error) {
				trace(error);
			}
		}
		
		private function getActor() : void {
			trace("--- getActor ---");
			var b : GameBoard = new GameBoard();
			var a1 : Actor = new Actor("my actor");
			b.addActor(a1);
			trace(b.containsActor(a1) == true);
			trace(b.containsActorWithName("my actor") == true);
			trace(b.containsActorWithName("not my actor") == false);
			b.removeActor(a1);
			trace(b.containsActor(a1) == false);
			trace(b.containsActorWithName("my actor") == false);
		}
		
		private function getActorAfterNameChange() : void {
			trace("--- getActorAfterNameChange ---");
			var b : GameBoard = new GameBoard();
			var a1 : Actor = new Actor("my actor");
			b.addActor(a1);
			a1.name = "another actor";
			trace(b.containsActor(a1) == true);
			trace(b.containsActorWithName("my actor") == false);
			trace(b.containsActorWithName("another actor") == true);
		}
	}
}
