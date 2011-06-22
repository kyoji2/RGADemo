package com.kevincao.rgademo.pages
{
	import com.gaiaframework.templates.AbstractPage;
	import com.greensock.TweenLite;
	
	
	[SWF(width="1000", height="600", frameRate="30", backgroundColor="#FFFFFF")]
	public class IndexPage extends AbstractPage
	{
		public function IndexPage()
		{
			super();
			alpha = 0;
		}
		
		override public function transitionIn() : void 
		{
			super.transitionIn();
			TweenLite.to(this, 0.3, {alpha: 1, onComplete: transitionInComplete});
		}
		
		override public function transitionOut() : void 
		{
			super.transitionOut();
			TweenLite.to(this, 0.3, {alpha: 0, onComplete: transitionOutComplete});
		}
	}
}