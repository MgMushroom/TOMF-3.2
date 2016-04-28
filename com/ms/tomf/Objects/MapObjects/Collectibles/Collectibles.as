package com.ms.tomf.Objects.MapObjects.Collectibles
{
	import com.ms.tomf.Objects.MapObjects.Collectibles.MUT;
	
	import flash.display.MovieClip;
	
	public class Collectibles extends MovieClip
	{
		private var collectiblesProp:Object = new Object;
		
		public function Collectibles()
		{	
			addCollectibles();
		}
		
		private function addCollectibles():void
		{
			collectiblesProp.mutData1 = new Array();
			collectiblesProp.mutData2 = new Array();
		
			collectiblesProp.mut = new MUT(0,0);
			this.addChild(collectiblesProp.mut);
		}
	}
}