package com.ms.tomf.Objects.MenuItems
{
	import com.ms.tomf.Screens.Menus.MainMenu;
	
	import flash.display.MovieClip;
	import flash.events.Event;
	import flash.events.MouseEvent;
	import flash.media.Sound;
	import flash.net.URLRequest;

	public class PlayButton extends MovieClip
	{	
		private var snd:Sound = new Sound(new URLRequest("menuSound.mp3")); 
		public static var changeScreenKEY:String = "NULL";
		
		public function PlayButton()
		{
			this.x =  600;
			this.y = 500
			this.addEventListener(MouseEvent.CLICK, mouseClicked)
		}
		private function mouseClicked(E:Event)
		{
			snd.play();
			changeScreenKEY = "GAME"
			trace(MainMenu.screenKEY)
		}			
	}
}