package com.ms.tomf.System.SaveSpots
{
	import com.ms.tomf.Objects.Map;
	import com.ms.tomf.Objects.MapObjects.Enemies.EnemiesMain;
	import com.ms.tomf.Objects.Player;
	import com.ms.tomf.Screens.InGame.InGame;
	import com.ms.tomf.Screens.InGame.Physics;
	
	import flash.display.MovieClip;
	import flash.net.*;
	
	public class Start extends MovieClip
	{
		public static var enemyArchiveData:Object = new Object;
		
		public function Start()
		{
		 ("THIS IS SAVE CLASS");	
		}
		
		public function startUp():void
		{
			
			Player.attributes.health = 100;
			Player.attributes.stamina = 100;
			Player.state.dead = false;
		
			Physics.movement.scrollY = 0;
			Physics.movement.scrollX = 0;
			
			
		
		}
	
		public function restartThis():void
		{
			navigateToURL(new URLRequest("whatever.html"),"_self");
		}
	}
}