package com.ms.tomf.ABS.melee
{
	import com.ms.tomf.ABS.Projectiles.ABSprojectiles;
	import com.ms.tomf.Objects.Player;
	import com.ms.tomf.Screens.InGame.Controls;
	import com.ms.tomf.Screens.InGame.UserInt;
	
	import flash.display.MovieClip;
	import flash.events.*;
	import flash.ui.Mouse;
	
	public class ABSmelee extends MovieClip
	{
		
		public static var meleeParams:Object = new Object;
		private var knife:Knife;
		public static var meleeWeapons:Object = new Object;
		
		public function ABSmelee()
		{
			
			//this.addEventListener(Event.ENTER_FRAME, attackMelee);
			this.addEventListener(Event.ENTER_FRAME, attackMelee);
		}
	
		private function attackMelee(e:Event):void
		{
			setUp();
			
			if(UserInt.frame.melee)
			{	
				ABSprojectiles.helpers.absRotate.visible = false;
				ABSprojectiles.shootCursor.visible = false;
				Mouse.show();
				
				stage.addEventListener(MouseEvent.CLICK, doAttack);
			}else{stage.removeEventListener(MouseEvent.CLICK, doAttack);}
		
		
		}
		
		private function setUp():void
		{
			meleeParams.attack = true;
		}
		
		private function doAttack(e:MouseEvent):void
		{
			
			meleeParams.playerX = 0;
			meleeParams.playerY = 0;
			
			if(meleeParams.attack == true)
			{
				this.knife = new Knife(Player.state.dir);
				this.addChild(knife);
				
				meleeParams.attack = false;
			}
			
			/*if(meleeParams.attack == true)
			{
				meleeParams.attack = false;
				
				meleeWeapons.dildo = new pinkDildo(Player.state.dir);
				this.addChild(meleeWeapons.dildo);
				
			}*/
		
		}
	}
}