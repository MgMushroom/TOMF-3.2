

//TO REMEMBER!!!: CHANGE horintazal flip to animation

package com.ms.tomf.ABS.magic
{
	import flash.display.MovieClip;
	import flash.events.Event;
	import com.ms.tomf.Screens.InGame.InGame;
	import com.ms.tomf.Screens.InGame.Physics;
	import com.ms.tomf.Objects.Player;
	public class Barrier extends MovieClip
	{
		private var barrierProperties:Object = new Object;
		
		public function Barrier(barrierDir:String)
		{
			
			this.x = InGame.inGameContent.player.x - InGame.inGameContent.player.width *0.5;
			this.y = InGame.inGameContent.player.y + InGame.inGameContent.player.height * 0.5;
			
			
			barrierProperties.speed = 0;
			barrierProperties.dir = barrierDir;
			barrierProperties.startX = this.x;
			barrierProperties.distance = 0;
			
			this.rotation = 0;
			this.addEventListener(Event.ENTER_FRAME, staticDir);
			
		}
	
		private function staticDir(e:Event):void
		{
			
			this.x -= Physics.movement.speedX;
			this.y -= Physics.movement.speedY;
			
			
			if(barrierProperties.dir == "right")
			{	
				this.scaleX = 1;
				
				barrierProperties.speed = 10;
				barrierProperties.distance += barrierProperties.speed
				
				this.x += barrierProperties.speed;
				
				if(barrierProperties.distance > 500)
				{remove();}
			}
			
			if(barrierProperties.dir == "left")
			{	
				this.scaleX = -1;
				
				barrierProperties.speed = -10;
				barrierProperties.distance += barrierProperties.speed
				
				this.x += barrierProperties.speed;
				
				if(barrierProperties.distance < -500)
				{remove();}
			}
		
		
		}
	
		private function remove():void
		{
			barrierProperties.distance = 0;
			
			if(this.parent)
			{this.parent.removeChild(this);}
		}
	}
}