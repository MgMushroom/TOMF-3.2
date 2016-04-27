package com.ms.tomf.Objects.MapObjects.Bosses
{
	import com.ms.tomf.Objects.MapObjects.Bosses.Hipitron;
	
	import flash.display.MovieClip;
	
	public class Bosses extends MovieClip
	{
		public static var bosses:Object = new Object;
		public function Bosses()
		{
			bosses.hipitron = new Hipitron;
			//addBosses();
		}
	
		private function addBosses():void
		{
			this.addChild(bosses.hipitron);
		}
	}
}