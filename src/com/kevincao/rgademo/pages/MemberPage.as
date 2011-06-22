package com.kevincao.rgademo.pages
{
	import com.greensock.TweenLite;
	import com.kevincao.rgademo.pages.member.context.MemberContext;
	import com.kevincao.robotgaia.ModulePage;

	import org.robotlegs.core.IInjector;


	[SWF(width="1000", height="600", frameRate="30", backgroundColor="#FFFFFF")]
	public class MemberPage extends ModulePage
	{
		public function MemberPage()
		{
			super();
			alpha = 0;
		}

		override public function transitionIn() : void
		{
			MemberContext(context).startup();

			super.transitionIn();
			TweenLite.to(this, 0.3, {alpha : 1, onComplete : transitionInComplete});
		}

		override public function transitionOut() : void
		{
			super.transitionOut();
			TweenLite.to(this, 0.3, {alpha : 0, onComplete : transitionOutComplete});
		}

		override public function set parentInjector(value : IInjector) : void
		{
			super.parentInjector = value;

			context = new MemberContext(this, false, value, loaderInfo.applicationDomain);
		}

	}
}