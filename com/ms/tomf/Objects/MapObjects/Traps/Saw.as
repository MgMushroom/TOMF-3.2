package com.ms.tomf.Objects.MapObjects.Traps
{ 
	import flash.display.MovieClip;
	import flash.events.*;
	import flash.geom.Point;
	import flash.display.Sprite
	
	
	public class Saw extends MovieClip
	{
		private var sawProp:Object = new Object;
		
		private var testSprite:Sprite = new Sprite;
		
		public function Saw()
		{
			
			sawProp.count = 0;
			sawProp.velocity = 20;
			sawProp.dir = "right";
			
			this.addEventListener(Event.ENTER_FRAME, movement);
		}
	
		private function movement(e:Event):void
		{
			
			if(sawProp.count > 350)
			{sawProp.dir = "left"}
			
			if(sawProp.count < -350)
			{sawProp.dir = "right"}
			
			if(sawProp.dir == "right")
			{this.x += sawProp.velocity; sawProp.count += sawProp.velocity}
			
			if(sawProp.dir == "left")
			{this.x -= sawProp.velocity; sawProp.count -= sawProp.velocity}
		
		}
	}
}