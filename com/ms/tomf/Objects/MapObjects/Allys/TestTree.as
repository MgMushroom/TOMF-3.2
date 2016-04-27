package com.ms.tomf.Objects.MapObjects.Allys
{
	import com.ms.tomf.Objects.MapObjects.SpeakBubble;
	import com.ms.tomf.Objects.Player;
	import com.ms.tomf.Screens.InGame.InGame;
	
	import flash.display.MovieClip;
	import flash.events.Event;
	
	public class TestTree extends MovieClip
	{
		private var bubble:SpeakBubble;
		
		public function TestTree()
		{
			setContent();
			addContent();
			
		}
		private function setContent():void
		{
			this.bubble = new SpeakBubble("Hi mush!!!");
		}
		private function addContent():void
		{
			this.addChild(bubble);
			this.addEventListener(Event.ENTER_FRAME, check);	
		}
		
		private function check(e:Event):void
		{
			if(this.hitTestPoint(InGame.inGameContent.player.x + Player.rightPoint.x, InGame.inGameContent.player.y + Player.rightPoint.y, true))
			{bubble.visible = true;}else{bubble.visible = false;}
		}
	}
}