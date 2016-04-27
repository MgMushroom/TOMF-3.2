package com.ms.tomf.Screens.InGame
{
	import com.ms.tomf.ABS.Projectiles.ABSprojectiles;
	import com.ms.tomf.Objects.Map;
	import com.ms.tomf.Objects.Player;
	import com.ms.tomf.Objects.MapObjects.Enemies.Worm;
	import com.ms.tomf.Screens.InGame.Controls;
	
	import flash.display.MovieClip;
	import flash.display.Sprite;
	import flash.events.Event;
	import flash.media.Sound;
	import flash.net.URLRequest;
	import flash.text.TextField;
	
	public class UserInt extends MovieClip
	{
		private var bars:Object = new Object;
		private var textF:TextField = new TextField;
		private var stopper:Object = new Object;
		private var snd:Sound = new Sound(new URLRequest("sound.mp3")); 
		public static var frame:Object = new Object;
		
		public function UserInt()
		{
			gotoAndStop("spear");
			stopper.e = true;
			stopper.q = true;
			
			addBars();
			this.addEventListener(Event.ENTER_FRAME, showPlayerParams);
		}
		
		public function addBars():void
		{
			

			
			textF.background = true;
			textF.backgroundColor = 0xFF0000;
			//this.addChild(textF);
			

				

			bars.health = new Sprite;
			//bars.health.graphics.lineStyle(3,0x000000);
			bars.health.graphics.beginFill(0xFF0000);
			bars.health.graphics.drawRect(0,0,200,18);
			bars.health.graphics.endFill();
			bars.health.x = 30.5;
			bars.health.y = 35.3;
		
			bars.stamina = new Sprite;
			//bars.stamina.graphics.lineStyle(3,0x000000);
			bars.stamina.graphics.beginFill(0xFFFF00);
			bars.stamina.graphics.drawRect(0,0,1,18);
			bars.stamina.graphics.endFill();
			bars.stamina.x = 30.5;
			bars.stamina.y = 82.3;
		
			this.addChild(bars.health);
			this.addChild(bars.stamina);
		
		}
	
		public function showPlayerParams(e:Event):void
		{
			if(currentLabel == "spear")
			{frame.spear = true;}else{frame.spear = false;}
			
			if(currentLabel == "melee")
			{frame.melee = true;}else{frame.melee = false;}
			
			if(currentLabel == "magic")
			{frame.magic = true;}else{frame.magic = false;}
			
			if(Controls.keyboard.e)
			{stopper.e = false;}
			
			if(Controls.keyboard.e == false  && stopper.e == false)
			{nextFrame(); snd.play(); stopper.e = true;}
			
			if(Controls.keyboard.q)
			{stopper.q = false;}
			
			if(Controls.keyboard.q == false && stopper.q == false)
			{prevFrame(); snd.play(); stopper.q = true;}
			
			bars.health.width = Player.attributes.health * 2;
			bars.stamina.width = ABSprojectiles.weapons.projectile.power * 4;
		}
	}
}