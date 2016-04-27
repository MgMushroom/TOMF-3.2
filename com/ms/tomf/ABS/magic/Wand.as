package com.ms.tomf.ABS.magic
{
	import com.ms.tomf.Objects.Player;
	import com.ms.tomf.Screens.InGame.InGame;
	
	import flash.display.MovieClip;
	import flash.events.Event;
	
	public class Wand extends MovieClip
	{
		
		private var activeSpell:Object = new Object;
		public static var doSpell:Object = new Object;
		
		public function Wand(spellNum:int, dir)
		{
			activeSpell.current = spellNum;
			activeSpell.dir = dir;
			
			this.x = InGame.inGameContent.player.x + 45;
			this.y = InGame.inGameContent.player.y + 75;
			
			this.addEventListener(Event.ENTER_FRAME, checkSpell);
		}
	
		private function checkSpell(e:Event):void
		{
			if(activeSpell.current == 0){slow();}
			if(activeSpell.current == 1){stun();}
			if(activeSpell.current == 2){barrier();}
		}
		
		private function slow():void
		{
			movement();
			Wand.doSpell.number = 0;
			
		
		}
	
		private function stun():void
		{
			movement();
			Wand.doSpell.number = 1;
			
		}
		
		private function barrier():void
		{
			movement();
			Wand.doSpell.number = 2;
		}
	
		private function movement():void
		{
			if(activeSpell.dir == "right")
			{
				this.rotation += 15;
				if(this.rotation == 105)
				{remove()}
			}
			
			if(activeSpell.dir == "left")
			{
				this.rotation -= 15;
				if(this.rotation == -105)
				{remove()}
			}
		}
		private function remove():void
		
		{
			doSpell.barrier = false;
			if(this.parent){this.parent.removeChild(this);}
		}
	}
}