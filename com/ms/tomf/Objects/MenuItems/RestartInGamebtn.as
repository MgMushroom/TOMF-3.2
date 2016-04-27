package com.ms.tomf.Objects.MenuItems
{
	import com.ms.tomf.System.SaveSpots.Start;
	
	import flash.display.MovieClip;
	import flash.events.MouseEvent;
	import flash.media.Sound;
	import flash.net.URLRequest;
	import flash.net.*;
	
	public class RestartInGamebtn extends MovieClip
	{
		private var snd:Sound = new Sound(new URLRequest("menuSound.mp3")); 
		private var start:Start;
		
		public function RestartInGamebtn()
		{
			super();
		
			this.x = 600;
			this.y = 450;
			this.addEventListener(MouseEvent.CLICK, mouseClicked)
		}
		
		private function mouseClicked(e:MouseEvent):void
		{
			snd.play();
			this.start = new Start;
			start.startUp();
			navigateToURL(new URLRequest("TalesOfMagicalForest.html"),"_self");
		}
	}
}