package com.ms.tomf.Objects.MapObjects.Collectibles
{
	import flash.display.MovieClip;
	import flash.events.Event;
	import com.ms.tomf.Screens.InGame.InGame;
	import com.ms.tomf.Screens.InGame.UserInt;
	
	public class MUT extends MovieClip
	{
		private var mutProp:Object = new Object;
		
		public function MUT(xM,yM)
		{
			this.addEventListener(Event.ENTER_FRAME, checkCol);
		}
		
		private function checkCol(e:Event):void
		{
			if(InGame.inGameContent.player.hitTestObject(this))
			{
				this.removeEventListener(Event.ENTER_FRAME, checkCol);
			UserInt.bars.mutAmout++;
				remove();
			
			}
		}
	
		private function remove():void
		{
			if(this.parent)
			{this.parent.removeChild(this);}
		}
	}
}