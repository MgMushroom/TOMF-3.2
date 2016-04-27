package com.ms.tomf.ABS.melee
{
	import com.ms.tomf.Screens.InGame.InGame;
	import com.ms.tomf.Objects.Player;
	import com.ms.tomf.ABS.melee.ABSmelee;
	
	import flash.display.MovieClip;
	import flash.events.*;
	import flash.media.Sound;
	import flash.net.URLRequest;
	import flash.utils.Timer;
	
	public class pinkDildo extends MovieClip
	{
		private var dildo:Object = new Object;
		private var buzz:Sound = new Sound(new URLRequest("buzz.mp3"));
		
		public function pinkDildo(dir:String)
		{
			
				dildo.dir = dir;
				buzz.play();
				
				this.x = InGame.inGameContent.player.x + 45;
				this.y = InGame.inGameContent.player.y + 75;
				
				delayedFunctionCall(2000);
				this.addEventListener(Event.ENTER_FRAME, checkRotation);
				
		}
			
		private function delayedFunctionCall(delay:int):void
		{
			var timer:Timer = new Timer(delay, 1);
			timer.addEventListener(TimerEvent.TIMER, remove);
			timer.start();
		}
		
		private function checkRotation(e:Event):void
		{
				
			
				if(Player.state.dir == "left")
				{	
					if(this.rotation > -90)
					{this.rotation -= 30}
					
					this.scaleX = -1;
					//this.rotation = -90;
				}
				
				if(Player.state.dir == "right")
				{	
					if(this.rotation < 90)
					{this.rotation += 30}

					this.scaleX = 1;
					//this.rotation = 90;
				}
				
				//if(this.rotation >= 105 || this.rotation <= -105)
				//{ remove(); }*/
		}
			
		private function remove(e:TimerEvent):void
		{
			ABSmelee.meleeParams.attack == true
			
			if(this.parent)
			{this.parent.removeChild(this);}
		
		}
	}
}