package com.ms.tomf.Objects.MapObjects
{
	import com.ms.tomf.Screens.InGame.InGame;
	import com.ms.tomf.Screens.InGame.Physics;
	
	import flash.display.MovieClip;
	
	public class PropLayer extends MovieClip
	{
		public function PropLayer()
		{
			this.x = Physics.movement.scrollX;
			this.y = Physics.movement.scrollY;
		}
	}
}