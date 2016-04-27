package com.ms.tomf.Objects.MapObjects.Bosses
{
	import flash.display.MovieClip;
	import flash.events.Event;
	
	import com.ms.tomf.Screens.InGame.Physics;
	
	public class Hipitron extends MovieClip
	{
		public function Hipitron()
		{
			this.x = 600;
			this.y = 400;

			this.addEventListener(Event.ENTER_FRAME, movement);
			
		}
	
		private function movement(e:Event):void
		{
			//this.x -= Physics.movement.speedX;
			//this.y -= Physics.movement.speedX;
		}
	}
}