package com.ms.tomf.ABS.magic
{
	import com.ms.tomf.ABS.magic.Spells;
	import com.ms.tomf.ABS.magic.Wand;
	import com.ms.tomf.Objects.Player;
	import com.ms.tomf.Screens.InGame.Controls;
	import com.ms.tomf.Screens.InGame.UserInt;
	
	import flash.display.MovieClip;
	import flash.events.*;
	import flash.ui.Mouse;
	
	public class ABSmagic extends MovieClip
	{
		
		private var spells:Object = new Object;
		private var wand:Wand;
		
		public function ABSmagic()
		{
			this.addEventListener(Event.ENTER_FRAME, checkMagic);
		}
	
		private function checkMagic(e:Event):void
		{
			setUp();
			
			if(UserInt.frame.magic)
			{stage.addEventListener(MouseEvent.CLICK, doMagic);}
			else
			{stage.removeEventListener(MouseEvent.CLICK, doMagic);}
		}
	
		private function setUp():void
		{
			spells.randomSpell = int(Math.random()*3);
			spells.currentSpell = spells.randomSpell;
		}
	
		private function doMagic(e:MouseEvent):void
		{
			var playerDir:String = Player.state.dir;
			this.wand = new Wand(spells.currentSpell, playerDir);
			this.addChild(wand);
			
			spells.number = Wand.doSpell.number;
			
			this.spells.spellBank = new Spells(spells.number);
			this.addChild(spells.spellBank);
		
		}
	}
}