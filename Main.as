package  {
	import flash.text.TextField;
	import flash.display.Sprite;
	import flash.events.Event;
	import flash.text.TextFormat;
	import flash.text.TextFieldAutoSize;
	
	public class Main extends Sprite {
		
		private var title:TextField;
		
		public function Main() {
			if(this.stage)
			{
				initGame();
			}else{
				this.stage.addEventListener(Event.ADDED_TO_STAGE, this.onAdded);
			}
		}
		
		private function onAdded(event:Event):void
		{
			this.stage.removeEventListener(Event.ADDED_TO_STAGE, this.onAdded);
			initGame();
		}
		
		private function initGame():void
		{
			title = new TextField();
			title.defaultTextFormat = new TextFormat(null, 30, 0xFF0000, true);
			title.text = "Hello world";
			title.autoSize = TextFieldAutoSize.CENTER;
			title.x = this.stage.stageWidth/2 - title.width/2;
			title.y = this.stage.stageHeight/2 - this.height/2;
			this.addChild(title);
			trace(title);
		}

	}
	
}
