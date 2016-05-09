package com.ms.tomf.Objects.MapObjects.Traps
{
	import com.ms.tomf.Objects.MapObjects.Traps.Saw;
	import com.ms.tomf.Objects.MapObjects.Traps.Spears;
	import com.ms.tomf.Objects.MapObjects.Traps.SwingBlade;
	import com.ms.tomf.Objects.MapObjects.Traps.SwingSaw;
	
	import flash.display.MovieClip;
	
	public class Traps extends MovieClip
	{
		public static var traps:Object = Object;
		//public var lol:Array = new Array(0,0);
		public var lol:int = 1;
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
			
			switch(lol)
			{	
				case 1:
					traps.swingSaw = new SwingSaw(17271.70, 526.55);
					this.addChild(traps.swingSaw);
					traps.swingBlade = new SwingBlade(500, 526.55);
					this.addChild(traps.swingBlade);
				lol++;
				case 2:
					traps.swingSaw = new SwingSaw(18320.75, 1569.95);
					this.addChild(traps.swingSaw);
				lol++;
				case 3:
					traps.swingSaw = new SwingSaw(18320.80, 728.30);
					this.addChild(traps.swingSaw);
					lol++;
				case 4:
					traps.swingSaw = new SwingSaw(18326.75, 328.45);
					this.addChild(traps.swingSaw);
					lol++;
				case 5:
					traps.swingSaw = new SwingSaw(19182.50, -73.90);
					this.addChild(traps.swingSaw);
					lol++;
				case 6:
					traps.swingSaw = new SwingSaw(20422.50, -75.05);
					this.addChild(traps.swingSaw);
					lol++;
				/*case 7:
					traps.swingSaw = new SwingSaw(3471.80, 282);
					this.addChild(traps.swingSaw);*/
			}
			
			/*for(var i:int = 0; i < 10; i++)
			{
				if(i == 1)
				{
				traps.swingSaw = new SwingSaw(2432.65, 208.3);
				this.addChild(traps.swingSaw);
				}
				if(i == 1)
				{
					traps.swingSaw = new SwingSaw(2796.5, 116.35);
					this.addChild(traps.swingSaw);
				}
				if(i == 1)
				{
					traps.swingSaw = new SwingSaw(2432.65, 208.3);
					this.addChild(traps.swingSaw);
				}
				if(i == 1)
				{
					traps.swingSaw = new SwingSaw(2796.5, 116.35);
					this.addChild(traps.swingSaw);
				}
			}*/
			
			
		
		}
	}
}