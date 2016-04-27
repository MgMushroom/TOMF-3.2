package com.ms.tomf.Objects.MenuItems
{
	import com.ms.tomf.Game;
	
	import flash.display.MovieClip;
	import flash.events.MouseEvent;
	import flash.media.Sound;
	import flash.net.URLRequest;
	import flash.net.*;
	
	public class MainInGamebtn extends MovieClip
	{
		private var snd:Sound = new Sound(new URLRequest("menuSound.mp3")); 
		
		public function MainInGamebtn()
		{
			super();
			this.x = 600;
			this.y = 350;
			this.addEventListener(MouseEvent.CLICK, mouseClicked)
		}
		
		private function mouseClicked(e:MouseEvent):void
		{
			snd.play();
			Game.state.mainmenu = true;
			navigateToURL(new URLRequest("TalesOfMagicalForest.html"),"_self");
		}
	}
}