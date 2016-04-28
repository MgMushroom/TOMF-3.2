package com.ms.tomf.Objects
{
	import com.ms.tomf.Objects.Map;
	import com.ms.tomf.ABS.Projectiles.RangeSpear;
	import com.ms.tomf.Screens.InGame.Controls;
	import com.ms.tomf.Screens.InGame.InGame;
	import com.ms.tomf.Screens.InGame.Physics;
	import com.ms.tomf.Screens.Menus.MainMenu;
	
	import flash.display.MovieClip; 
	import flash.events.Event;
	import flash.geom.Point;
	import flash.net.*;
	
	public class Player extends MovieClip
	{
		private var check:Boolean = true;
		
		//Player attributes
		public static var attributes:Object = new Object;
		public static var state:Object = new Object;
		private var frameControl:Object = new Object;
		//Player point vars
		public static var bumpPoints:Object = new Object;
		//Player points
		public static var leftPoint:Point; 
		public static var rightPoint:Point;
		public static var upPoint:Point;
		public static var downPoint:Point;
		public static var playerY;
		public static var playerX;
	
		
		public function Player()
		{
			trace("PLAYER ACTIVE");
			state.running = true;
			frameControl.frame = 0;
			
			this.x = 600;
			this.y = 400;
			setAttributes();
			setPoints();
		}
		
		private function setPoints():void
		{	
			leftPoint= new Point(-72.975/2, 0);
			rightPoint= new Point(72.975/2, 0);
			upPoint = new Point(0, -98.975/2);
			downPoint = new Point(0, 98.975/2);
			
			bumpPoints.up = false;
			bumpPoints.down = false;
			bumpPoints.left = false;
			bumpPoints.right = false;
		}
	
		private function setAttributes():void
		{	
			attributes.health = 100;
			attributes.stamina = 100;
			
			this.addEventListener(Event.ENTER_FRAME, checkPlayer)
			this.addEventListener(Event.ENTER_FRAME, checkAnimation)
		}
		
		private function checkPlayer(e:Event):void
		{	
			
			if(this.x < Controls.mouse.x)
			{state.dir = "right";}
			else if (this.x > Controls.mouse.x)
			{state.dir = "left";}
				
			if(attributes.health <= 0)
			{state.dead = true;
			navigateToURL(new URLRequest("TalesOfMagicalForest.html"),"_self");}
			
			if(attributes.stamina < 100)
			{attributes.stamina += 0.15;}
		}
		
		private function checkAnimation(e:Event):void
		{	

			if(Controls.keyboard.a == false && Controls.keyboard.d == false && this.x < Controls.mouse.x)

			{
				frameControl.state = "stand";
				//gotoAndPlay("stand");
				this.scaleX = 0.5;
				this.scaleY = 0.5;
			}
			if(Controls.keyboard.a == false && Controls.keyboard.d == false && this.x > Controls.mouse.x)
			{
				frameControl.state = "stand";
				
				this.scaleX = -0.5;
				this.scaleY = 0.5;
			}
			
			if(Player.bumpPoints.down == false && Physics.movement.speedY < 0 && this.x < Controls.mouse.x)
			{
				frameControl.state = "jump";
				
				this.scaleX = 0.5;
				this.scaleY = 0.5;
			}
			
			if(Player.bumpPoints.down == false  && Physics.movement.speedY < 0 && this.x > Controls.mouse.x)
			{
				frameControl.state = "jump";
				
				this.scaleX = -0.5;
				this.scaleY = 0.5;
			}
		
			if(Controls.keyboard.a == true && this.x < Controls.mouse.x && state.running && Player.bumpPoints.down == true||
				Controls.keyboard.d == true && this.x < Controls.mouse.x && state.running && Player.bumpPoints.down == true)
			{
				frameControl.state = "running";
				
				this.scaleX = 0.5;
				this.scaleY = 0.5;
			}
			
			if(Controls.keyboard.a == true && this.x > Controls.mouse.x && state.running  && Player.bumpPoints.down == true||
				Controls.keyboard.d == true && this.x > Controls.mouse.x && state.running  && Player.bumpPoints.down == true)
			{
				frameControl.state = "running";
			
				this.scaleX = -0.5;
				this.scaleY = 0.5;
			}
		
			if(this.currentLabel != frameControl.state)
			{this.gotoAndStop(frameControl.state);}
		
		}
	}
}