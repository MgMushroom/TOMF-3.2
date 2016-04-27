package com.ms.tomf.Objects.MapObjects.Traps
{
	import com.ms.tomf.Objects.MapObjects.Traps.Spears;
	import com.ms.tomf.Objects.MapObjects.Traps.Saw;
	import com.ms.tomf.Objects.MapObjects.Traps.SwingSaw;
	import flash.display.MovieClip;
	
	public class Traps extends MovieClip
	{
		public static var traps:Object = Object;
		
		public function Traps()
		{
			
			defineTrapsContent();
			addTrapsContent();
		}
	
		private function defineTrapsContent():void
		{
			traps.spears = new Spears;
			traps.saw = new Saw;
			
		}
	
		public function addTrapsContent():void
		{
			this.addChild(traps.spears);
			this.addChild(traps.saw);
			
			for(var i:int = 0; i < 10; i++)
			{
				if(i == 1)
				{
				traps.swingSaw = new SwingSaw(4873.2, 405.8);
				this.addChild(traps.swingSaw);
				}
				if(i == 1)
				{
					traps.swingSaw = new SwingSaw(5580.4, 235.0);
					this.addChild(traps.swingSaw);
				}
			}
			
			
		
		}
	}
}