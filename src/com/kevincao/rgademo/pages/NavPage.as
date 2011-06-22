package com.kevincao.rgademo.pages
{
	import com.bit101.components.PushButton;
	import com.bit101.components.VBox;
	import com.gaiaframework.api.Gaia;
	import com.gaiaframework.templates.AbstractPage;
	import com.greensock.TweenLite;

	import flash.events.MouseEvent;


	[SWF(width="1000", height="600", frameRate="30", backgroundColor="#FFFFFF")]
	public class NavPage extends AbstractPage
	{
		private var vbox : VBox;
		private var homeButton : PushButton;
		private var memberButton : PushButton;

		public function NavPage()
		{
			super();
			alpha = 0;
		}

		override public function transitionIn() : void
		{
			vbox = new VBox(this, 10, 10);
			homeButton = new PushButton(vbox, 0, 0, "Home", clickHandler);
			memberButton = new PushButton(vbox, 0, 0, "Member", clickHandler);

			homeButton.width = 60;
			memberButton.width = 60;

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
			switch(event.target)
			{
				case homeButton:
					Gaia.api.goto(Pages.HOME);
					break;
				case memberButton:
					Gaia.api.goto(Pages.MEMBER);
					break;
				default:
			}
		}
	}
}