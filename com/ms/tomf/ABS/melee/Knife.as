package com.ms.tomf.ABS.melee
{
	
	import com.ms.tomf.Screens.InGame.InGame;
	import com.ms.tomf.Screens.InGame.Controls;
	import flash.display.MovieClip;
	import flash.events.Event;
	
	public class Knife extends MovieClip
	{
		private var knife:Object = new Object;
		
		public function Knife(playerDir:String)
		{
			
			knife.dir = playerDir;
			
			trace("KNIFE");
			this.x = InGame.inGameContent.player.x + 45;
			this.y = InGame.inGameContent.player.y + 75;
			
			
			this.addEventListener(Event.ENTER_FRAME, checkRotation);
			
		}
	
		private function checkRotation(e:Event):void
		{
			
		
			
			if(knife.dir == "left")
			{this.rotation -= 20;}
			
			if(knife.dir == "right")
			{this.rotation += 20;}
		
			if(this.rotation >= 105 || this.rotation <= -105)
			{ remove(); }
		}
		
		private function remove():void
		{
			
			if(this.parent)
			{this.parent.removeChild(this);}
		}
	}
}