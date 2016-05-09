package com.ms.tomf.Objects
{
	import com.ms.tomf.ABS.Projectiles.ABSprojectiles;
	import com.ms.tomf.Objects.Player;
	import com.ms.tomf.Objects.MapObjects.Background;
	import com.ms.tomf.Objects.MapObjects.Ground;
	import com.ms.tomf.Objects.MapObjects.PropLayer;
	import com.ms.tomf.Objects.MapObjects.Allys.TestTree;
	import com.ms.tomf.Objects.MapObjects.Collectibles.Collectibles;
	import com.ms.tomf.Objects.MapObjects.Enemies.Worm;
	import com.ms.tomf.Objects.MapObjects.Movement.Movement;
	import com.ms.tomf.Objects.MapObjects.Traps.Traps;
	import com.ms.tomf.Screens.InGame.InGame;
	import com.ms.tomf.Screens.InGame.Physics;
	import com.ms.tomf.Objects.MapObjects.SpeechBubble;
	
	import flash.display.MovieClip;
	import flash.events.Event;
	
	public class Map extends MovieClip
	{
		public static var mapContent:Object = new Object;
		private var speedY:int = Physics.movement.speedY;
		private var speedX:int = Physics.movement.speedX;
		
			public function Map()
		{
			
			defineMapContent();
			addMapContent();
			this.y += 300;
			
			this.addEventListener(Event.ENTER_FRAME, mapMovement);
		}
		
		private function mapMovement(e:Event):void
		{	
			trace((this.x - InGame.inGameContent.player.x) + "\n" + (this.y -InGame.inGameContent.player.x));
			Physics.movement.speedX *= Physics.movement.friction;
			Physics.movement.speedY *= Physics.movement.friction;
			Physics.movement.scrollX -= Physics.movement.speedX;
			Physics.movement.scrollY -= Physics.movement.speedY;
			InGame.inGameContent.map.x = Physics.movement.scrollX;
			InGame.inGameContent.map.y = Physics.movement.scrollY;
		
			if(y < -10000)
			{Player.attributes.health -= 100;}
		}
		
		private function defineMapContent():void
		{
			 
			mapContent.ground = new Ground;
			mapContent.background = new Background;
			mapContent.testTree = new TestTree; 
			mapContent.traps = new Traps;
			mapContent.movement = new Movement;
			mapContent.collectibles = new Collectibles;
			mapContent.proplayer = new PropLayer;
			mapContent.speechbubble = new SpeechBubble;
			//mapContent.worm = new Worm;
		}
	
		private function addMapContent():void
		{
			this.addChild(mapContent.background);
			this.addChild(mapContent.proplayer);
			this.addChild(mapContent.ground);
			this.addChild(mapContent.movement);
			this.addChild(mapContent.traps);
			//this.addChild(mapContent.testTree);
			this.addChild(mapContent.collectibles);
			//this.addChild(mapContent.worm);
			this.addChild(mapContent.speechbubble)
			

		}
	}
}