package com.ms.tomf.ABS.Projectiles
{
	import com.ms.tomf.Objects.Map;
	import com.ms.tomf.Objects.MapObjects.Ground;
	import com.ms.tomf.Objects.Player;
	import com.ms.tomf.Screens.InGame.Controls;
	import com.ms.tomf.Screens.InGame.InGame;
	import com.ms.tomf.Screens.InGame.Physics;
	
	import flash.display.MovieClip;
	import flash.display.Sprite;
	import flash.events.Event;
	import flash.geom.Point;
	import flash.media.Sound;
	import flash.net.URLRequest;
	
	public class RangeSpear extends MovieClip
	{	
		private var spear:Object = new Object;
		public static var spearDamage;
		private var snd:Sound = new Sound(new URLRequest("spearFly.mp3"));
		private var testSprite:Sprite;
		
		public function RangeSpear(playerDirection:String,power:int,rotation:Number)
		{
			Controls.keyboard.space = false;
			snd.play();
			
			spearDamage = 2.0 + power * 0.1;
			
			spear.fly = false;
			spear.dir = playerDirection;
			spear.yVel = 0; 
			spear.xVel = 0; 
			spear.rotationInRadians = 0;
			spear.rotation = rotation;
			
			this.rotation = spear.rotation
			spear.rotationInRadians = spear.rotation * Math.PI / 180;
			
			/*if(spear.dir  == "right"){spear.speed = 30 + power/2;
				this.x = InGame.inGameContent.player.x + 40;}
			if(spear.dir  == "left"){spear.speed = 30 + power/2;
				this.x = InGame.inGameContent.player.x + 40;}*/
			
			spear.speed = 20 + power/2;
			this.x = InGame.inGameContent.player.x;
			this.y = InGame.inGameContent.player.y;
			
			spear.startX = this.x 
			
			points(); 
			animation();
			
			
			this.addEventListener(Event.ENTER_FRAME, fly);
		}
		
	private function animation():void
		{		
			spear.know = InGame.inGameContent.player.x - InGame.inGameContent.map.x;
		}
		private function fly(e:Event):void
		{
			spear.xVel = Math.cos(spear.rotationInRadians) * spear.speed;
			spear.yVel = Math.sin(spear.rotationInRadians) * spear.speed;
			
			x += spear.xVel; //updates the position
			y += spear.yVel;
			
			x -= Physics.movement.speedX
			y -= Physics.movement.speedY
			
			if(x+y>5000 || x+y<-5000)
			{remove();}
			
			if(InGame.inGameContent.enemies.hitTestPoint(this.x + spear.leftPoint.x, this.y + spear.leftPoint.y, true))
			{remove();} 
			if(InGame.inGameContent.enemies.hitTestPoint(this.x + spear.rightPoint.x, this.y + spear.rightPoint.y, true))
			{remove();}
		
			
		
		}
		
		private function points():void
		{
			spear.leftPoint = new Point(-50.50, -6);  
			spear.rightPoint = new Point(-130, -6);
		
			for(var i:int=0;i<3;i++)
			{
				/*if(i==1)
				{doSprites(spear.leftPoint.x, spear.leftPoint.y);}
				if(i==2)
				{doSprites(spear.rightPoint.x, spear.rightPoint.y);}*/
			}
		}
		
		private function doSprites(xS,yS):void
		{
			this.testSprite = new Sprite;
			testSprite.x = xS;
			testSprite.y = yS;
			testSprite.graphics.beginFill(0xFF0000);
			testSprite.graphics.drawRect(0,0,10,10);
			testSprite.graphics.endFill();
			this.addChild(testSprite);
		}
		
		private function remove():void
		{
			if (this.parent) this.parent.removeChild(this);
		}
		
	}
}