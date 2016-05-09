package com.ms.tomf.Objects.MapObjects.Traps
{
	import flash.display.MovieClip;
	import flash.events.Event;
	import flash.geom.Point;
	import flash.display.Sprite;
	import flash.display.Shape; 

	import com.ms.tomf.Screens.InGame.InGame;
	import com.ms.tomf.Objects.Player;
	
	public class SwingSaw extends MovieClip
	{
		private var swingSawProps:Object = new Object;
		private var sawPoint:Point = new Point(0,0);
		private var testSprite:Sprite = new Sprite;
		private var rect:Shape = new Shape(); 
		
		public function SwingSaw(xSwing:int, ySwing:int)
		{
			swingSawProps.rotateSpeed = 5;
			
			this.x = xSwing;
			this.y = ySwing;
			this.addEventListener(Event.ENTER_FRAME, rotate);
		}
		
		private function rotate(e:Event):void
		{
			this.rotation += swingSawProps.rotateSpeed;
			
			rect.graphics.drawRect(0, 0, 125,125)
			rect.y = - 230;
			rect.x = -40;
			rect.rotation += swingSawProps.rotateSpeed;
			//this.addChild(rect);
			
			testSprite.x = rect.x;
			testSprite.y = rect.y;
			testSprite.graphics.beginFill(0xFF0000);
			testSprite.graphics.drawRect(0,0,200,200);
			testSprite.graphics.endFill();
			//this.addChild(testSprite);
			
		}
	}
}