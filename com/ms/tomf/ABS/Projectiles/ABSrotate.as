package com.ms.tomf.ABS.Projectiles
{
	import com.ms.tomf.ABS.Projectiles.ABSprojectiles;
	import com.ms.tomf.Screens.InGame.Controls;
	import com.ms.tomf.Screens.InGame.InGame;
	
	import flash.display.MovieClip;
	import flash.display.Sprite;
	import flash.events.Event;
	
	public class ABSrotate extends MovieClip
	{
		
		public static var rotationABS:Number;
		public static var cursorCol:Boolean;
		
		public function ABSrotate()
		{
			this.x = InGame.inGameContent.player.x 
				//+ InGame.inGameContent.player.width *0.5;
			this.y = InGame.inGameContent.player.y 
				//+ InGame.inGameContent.player.height *0.5;
			
			this.addEventListener(Event.ENTER_FRAME,check);
			
		}
	
		private function check(e:Event):void
		{
			
			if(this.hitTestPoint(ABSprojectiles.shootCursor.x + ShootCursor.cursorPoint.x,
				ABSprojectiles.shootCursor.y + ShootCursor.cursorPoint.y,true))
			{cursorCol=true;}else{cursorCol=false;}
			
			var yDifference:Number =  Controls.mouse.y - y;
			var xDifference:Number =  Controls.mouse.x - x;
			var radiansToDegrees:Number = 180/Math.PI;
			
			rotation = Math.atan2(yDifference, xDifference) * radiansToDegrees;
			rotationABS = this.rotation;
		}
	}
}