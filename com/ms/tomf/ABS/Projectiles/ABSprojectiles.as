package com.ms.tomf.ABS.Projectiles
{
	import com.ms.tomf.Objects.Player;
	import com.ms.tomf.ABS.Projectiles.ABSrotate;
	import com.ms.tomf.ABS.Projectiles.RangeSpear;
	import com.ms.tomf.ABS.Projectiles.ShootCursor;
	import com.ms.tomf.Screens.InGame.Controls;
	import com.ms.tomf.Screens.InGame.InGame;
	import com.ms.tomf.Screens.InGame.UserInt;
	
	import flash.display.MovieClip;
	import flash.events.Event;
	import flash.events.MouseEvent;
	import flash.geom.Point;
	import flash.ui.Mouse;
	
	public class ABSprojectiles extends MovieClip
	{
		public static var weapons:Object = new Object;
		public static var helpers:Object = new Object;
		public static var shootCursor:ShootCursor = new ShootCursor;
		
		public function ABSprojectiles()
		{
			
			setWeaponsContent();
			addWeaponsContent();
			
		}
	
		private function setWeaponsContent():void
		{
			shootCursor.mouseEnabled=false;
			shootCursor.visible = false;
			
			weapons.projectile = new Object;
			helpers.absRotate = new ABSrotate;
				helpers.absRotate.visible = false;
		}
		
		private function addWeaponsContent():void
		{
			this.addChild(helpers.absRotate);
			this.addChild(shootCursor);
			this.addEventListener(Event.ENTER_FRAME, projectiles);
		}
	
		private function projectiles(e:Event):void
		{
			

			

			

			if(UserInt.frame.spear)
			{scope();
			cursorControl();}
		}
		
		private function cursorControl():void
		{
			if(Controls.keyboard.space == true)
			{
				shootCursor.visible = true;
				shootCursor.x=stage.mouseX;
				shootCursor.y=stage.mouseY;
				Mouse.hide();
			}		
			
			if(Controls.keyboard.space == false)
			{
				shootCursor.visible = false;
				shootCursor.x=stage.mouseX;
				shootCursor.y=stage.mouseY;
				Mouse.show();
			}	
		}
		
		private function scope():void
		{
			
			var player:Player = InGame.inGameContent.player;
			
			if(Controls.keyboard.space == true)
			{
				weapons.projectile.lauch = true;
				weapons.projectile.power++;
				
				if(ABSrotate.cursorCol==false){helpers.absRotate.visible = true;}
				else{helpers.absRotate.visible = false;}
				
				if(weapons.projectile.power > 50)
				{weapons.projectile.power = 50;}
				stage.addEventListener(MouseEvent.CLICK, lauch);
			}		
		
			if(Controls.keyboard.space == false)
			{
				weapons.projectile.power = 0;
				weapons.projectile.lauch = false;
				helpers.absRotate.visible = false;
			}		
		}
		
		private function lauch(e:MouseEvent):void
		{
			
			if(weapons.projectile.lauch == true && UserInt.frame.spear == true)
			{
				weapons.spear = new RangeSpear(Player.state.dir, weapons.projectile.power, ABSrotate.rotationABS);
				this.addChild(weapons.spear);
				weapons.projectile.power = 0;
				
				if(Controls.keyboard.w||Controls.keyboard.a||Controls.keyboard.d||
				Controls.keyboard.w == false||Controls.keyboard.a  == false||Controls.keyboard.d == false)
				{Controls.keyboard.space = true;}
			
			}
		}
	}
}