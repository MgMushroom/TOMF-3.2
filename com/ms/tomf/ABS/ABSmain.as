package com.ms.tomf.ABS
{
	import flash.display.MovieClip;
	import com.ms.tomf.ABS.Projectiles.ABSprojectiles;
	
	public class ABSmain extends MovieClip
	{
		private var absContent:Object;
		
		public function ABSmain()
		{
			setContent();
			addContent();
		}
		
		private function setContent():void
		{
			absContent.ABSproj = new ABSprojectiles;
		}
		
		private function addContent():void
		{
			this.addChild(absContent.ABSproj);
		}
	}
}