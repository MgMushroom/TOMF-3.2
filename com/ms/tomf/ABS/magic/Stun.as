package com.ms.tomf.ABS.magic
{
	import com.ms.tomf.Screens.InGame.InGame;
	import com.ms.tomf.Screens.InGame.Physics;
	import flash.display.MovieClip;
	import flash.events.Event;
	
	public class Stun extends MovieClip
	{
		
		private var stunProp:Object = new Object;
		
		public function Stun(stunDir:String)
		{
			
			this.x = InGame.inGameContent.player.x - InGame.inGameContent.player.width *0.5;
			this.y = InGame.inGameContent.player.y + InGame.inGameContent.player.height * 0.5;
			
			stunProp.distance = 0;
			stunProp.dir = stunDir;
			stunProp.speed = 10;
			
			this.addEventListener(Event.ENTER_FRAME, doStun);
		}
	
		private function doStun(e:Event):void
		{		
			
			
			
			this.x -= Physics.movement.speedX;
			this.y -= Physics.movement.speedY;
			
			if(stunProp.dir == "right") 
			{
				this.x += stunProp.speed;
				this.scaleX = 2.5;
				this.scaleY = 2.5;
			}
			
			if(stunProp.dir == "left") 
			{	
				this.x -= stunProp.speed;
				this.scaleX = -2.5;
				this.scaleY = -2.5;
			}
			
			stunProp.distance += stunProp.speed;
			
			if(stunProp.distance < -1500 || stunProp.distance > 1500)
			{remove();}
		
		}
	
		private function remove():void
		{
			stunProp.distance = 0;
			
			if(this.parent)
			{this.parent.removeChild(this);}
		}
	}
}