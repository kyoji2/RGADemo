package com.kevincao.rgademo.pages
{
	import com.bit101.components.Label;
	import com.bit101.components.PushButton;
	import com.gaiaframework.templates.AbstractPage;
	import com.greensock.TweenLite;

	import flash.events.MouseEvent;
	import flash.system.System;


	[SWF(width="1000", height="600", frameRate="30", backgroundColor="#FFFFFF")]
	public class HomePage extends AbstractPage
	{
		public function HomePage()
		{
			super();
			alpha = 0;
		}

		override public function transitionIn() : void
		{
			new Label(this, 120, 10, "In debug player, you can test memory recycle by using gc button below.");
			new PushButton(this, 120, 40, "gc", clickHandler);

			super.transitionIn();
			TweenLite.to(this, 0.3, {alpha : 1, onComplete : transitionInComplete});
		}

		override public function transitionOut() : void
		{
			super.transitionOut();
			TweenLite.to(this, 0.3, {alpha : 0, onComplete : transitionOutComplete});
		}
		
		//----------------------------------
		//  handlers
		//----------------------------------
		
		private function clickHandler(event : MouseEvent) : void
		{
			System.gc();
		}
	}
}