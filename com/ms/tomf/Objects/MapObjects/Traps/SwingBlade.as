package com.ms.tomf.Objects.MapObjects.Traps
{
	import flash.display.MovieClip;
	import flash.events.Event;
	
	public class SwingBlade extends MovieClip
	{
		private var swingSawProps:Object = new Object;
		private var counter:Number = 0
		public function SwingBlade(xSwing:int, ySwing:int)
		{
			swingSawProps.rotateSpeed = 3;
			
			this.x = xSwing;
			this.y = ySwing;
			this.addEventListener(Event.ENTER_FRAME, rotate);
		}
		private function rotate(e:Event):void
		{
			counter++
			
			if(counter <= 60)
			{
				this.rotation -= swingSawProps.rotateSpeed;
			}
			if(counter >=61 && counter < 121)
			{
				this.rotation += swingSawProps.rotateSpeed;
			}
			if(counter == 121)
			{
				counter = 0;
			}
			
		}
		
	}
}