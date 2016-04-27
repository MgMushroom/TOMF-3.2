package com.ms.tomf.ABS.magic
{

	import flash.display.MovieClip;
	import flash.events.Event;
	import com.ms.tomf.Screens.InGame.InGame;
	import com.ms.tomf.Screens.InGame.Physics;

	public class Slow extends MovieClip
	{
		private var slow:Object = new Object;
		
		public function Slow(PlayerDir:String)
		{		
			
			this.x = InGame.inGameContent.player.x - InGame.inGameContent.player.width *0.5;
			this.y = InGame.inGameContent.player.y + InGame.inGameContent.player.height * 0.5;
			
			
			slow.dir = PlayerDir;
			slow.speed = 0;
			slow.distance = 0;
			
			this.addEventListener(Event.ENTER_FRAME, doSlow);
		}
		
		private function doSlow(e:Event):void
		{		
			
			this.x -= Physics.movement.speedX;
			this.y -= Physics.movement.speedY;
			
			if(slow.dir == "right") 
			{
				slow.speed++;
				this.x += slow.speed;
			}
				
			if(slow.dir == "left") 
			{	
				slow.speed--;
				this.x += slow.speed;
			}
		
			slow.distance += slow.speed;
			
			if(slow.distance < -1500 || slow.distance > 1500)
			{remove();}
		
		}
	
		private function remove():void
		{
			slow.distance = 0;
			
			if(this.parent)
			{this.parent.removeChild(this);}
		}
	
	}
	
}