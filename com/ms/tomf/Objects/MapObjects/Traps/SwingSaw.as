package com.ms.tomf.Objects.MapObjects.Traps
{
	import flash.display.MovieClip;
	import flash.events.Event;
	
	public class SwingSaw extends MovieClip
	{
		private var swingSawProps:Object = new Object;
		
		public function SwingSaw(xSwing:int, ySwing:int)
		{
			swingSawProps.rotateSpeed = 10;
			
			this.x = xSwing;
			this.y = ySwing;
			this.addEventListener(Event.ENTER_FRAME, rotate);
		}
		
		private function rotate(e:Event):void
		{
			this.rotation += swingSawProps.rotateSpeed;
		}
	
	}
}