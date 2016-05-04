package com.ms.tomf.Objects.MapObjects.Traps
{
	import com.ms.tomf.Objects.Player;
	import com.ms.tomf.Screens.InGame.InGame;
	
	import flash.display.MovieClip;
	import flash.events.Event;
	
	public class sawBlade extends MovieClip
	{
		public function sawBlade()
		{
			this.addEventListener(Event.ENTER_FRAME, check);
		}
	
		private function check(e:Event):void
		{
			if(this.hitTestPoint(InGame.inGameContent.player.x + Player.downPoint.x, InGame.inGameContent.player.y + Player.downPoint.y,true))
			{
				Player.attributes.health -= 20;
			}
		
			if(this.hitTestPoint(InGame.inGameContent.player.x + Player.upPoint.x, InGame.inGameContent.player.y + Player.upPoint.y,true))
			{
				Player.attributes.health -= 20;
			}
			
			if(this.hitTestPoint(InGame.inGameContent.player.x + Player.leftPoint.x, InGame.inGameContent.player.y + Player.leftPoint.y,true))
			{
				Player.attributes.health -= 20;
			}
			
			if(this.hitTestPoint(InGame.inGameContent.player.x + Player.rightPoint.x, InGame.inGameContent.player.y + Player.rightPoint.y,true))
			{
				Player.attributes.health -= 20;
			}
		}
	}
}