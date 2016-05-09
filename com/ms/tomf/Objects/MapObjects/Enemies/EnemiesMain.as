package com.ms.tomf.Objects.MapObjects.Enemies
{
	import flash.display.MovieClip;
	
	public class EnemiesMain extends MovieClip
	{
		
		public function EnemiesMain()
		{
			addSetup(true);
		}
	
		private function setUp():void
		{
			
		}
	
		public function addSetup(clean:Boolean):void
		{
			var enemies:Object = new Object;
			var enemyArchive:Object = new Object;
			
			enemyArchive.worm1 = new Array(2524.65,379.45,true,11);
			enemyArchive.worm2 = new Array(2524.65,-660.35,true,12);
			enemyArchive.worm3 = new Array(5461.35,-387.10,false,13);
			enemyArchive.worm4 = new Array(9334.25,306.50,false,14);
			enemyArchive.worm5 = new Array(10158.20,306.50,false,15);
			enemyArchive.worm6 = new Array(10978.65,306.50,false,12);
			enemyArchive.worm7 = new Array(14931.65,1681.65,false,13);
			
			for(var i:int = 0;i<10;i++)
			{
				if(i==1)
				{
					enemies.worm = new Worm(enemyArchive.worm1);
					this.addChild(enemies.worm);
				}
			
				if(i==2)
				{
					enemies.worm = new Worm(enemyArchive.worm2);
					this.addChild(enemies.worm);
				}
			
				if(i==3)
				{
					enemies.worm = new Worm(enemyArchive.worm3);
					this.addChild(enemies.worm);
				}
				
				if(i==4)
				{
					enemies.worm = new Worm(enemyArchive.worm4);
					this.addChild(enemies.worm);
				}
			
				if(i==5)
				{
					enemies.worm = new Worm(enemyArchive.worm5);
					this.addChild(enemies.worm);
				}
			
				if(i==6)
				{
					enemies.worm = new Worm(enemyArchive.worm6);
					this.addChild(enemies.worm);
				}
				if(i==7)
				{
					enemies.worm = new Worm(enemyArchive.worm7);
					this.addChild(enemies.worm);
				}
			}
		}
	}	
}