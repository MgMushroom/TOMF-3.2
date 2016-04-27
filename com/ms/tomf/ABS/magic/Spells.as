package com.ms.tomf.ABS.magic
{
	import flash.display.MovieClip;
	import flash.events.Event;
	import com.ms.tomf.Objects.Player;
	import com.ms.tomf.ABS.magic.Slow;
	
	public class Spells extends MovieClip
	{
		private var spell:Object = new Object;
		private var activeSpell:Object = new Object;
		
		public function Spells(spell:int)
		{
			
			activeSpell.spell = spell;
			activeSpell.dir = Player.state.dir;
			
			if(activeSpell.spell == 0)
			{activeSpell.stun = true;}
			
			if(activeSpell.spell == 1)
			{activeSpell.slow = true;}
			
			if(activeSpell.spell == 2)
			{activeSpell.barrier = true;}
			
			
			this.addEventListener(Event.ENTER_FRAME, checkActive);
			
		}
	
		private function checkActive(e:Event)
		{
		
			
			
			if(activeSpell.stun == true)
			{
				
				activeSpell.stun = false;
				
				spell.stun = new Stun(activeSpell.dir);
				this.addChild(spell.stun);
				
			}
			
			
			if(activeSpell.slow == true)
			{
				
				activeSpell.slow = false;
				
				spell.slow = new Slow(activeSpell.dir);
				this.addChild(spell.slow);
				
			}
			
			if(activeSpell.barrier == true)
			{
			
				activeSpell.barrier = false;
					
				spell.barrier = new Barrier(activeSpell.dir);
				this.addChild(spell.barrier);
			}
		}
	}
}		
