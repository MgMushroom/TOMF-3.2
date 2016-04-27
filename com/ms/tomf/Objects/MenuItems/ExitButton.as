package com.ms.tomf.Objects.MenuItems
{
	import com.ms.tomf.Screens.Menus.MainMenu;
	
	import flash.display.MovieClip;
	import flash.events.Event;
	import flash.events.MouseEvent;
	import flash.media.Sound;
	import flash.net.URLRequest;
	import flash.system.fscommand;

	public class ExitButton extends MovieClip
	{	
		private var snd:Sound = new Sound(new URLRequest("menuSound.mp3")); 
		
		public function ExitButton()
		{

			this.x = 590;
			this.y = 625;
			this.addEventListener(MouseEvent.MOUSE_DOWN, mouseClickedE)
		}
		
		private function mouseClickedE(E:Event):void

		{ 
			snd.play();
			fscommand("quit");
		}
	}
}