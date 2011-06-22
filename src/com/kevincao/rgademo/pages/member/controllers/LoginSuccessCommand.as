/*
 * 
 * Copyright (c) 2011 kevincao.com, All Rights Reserved
 * @author		Kevin Cao
 * @email	 	kevin@kevincao.com
 * 
 */
package com.kevincao.rgademo.pages.member.controllers
{
	import com.kevincao.rgademo.models.IAppModel;
	import com.kevincao.rgademo.pages.member.views.MemberView;
	import com.kevincao.rgademo.models.vo.MemberVO;

	import org.robotlegs.mvcs.Command;

	/**
	 * @author Kevin Cao
	 */
	public class LoginSuccessCommand extends Command
	{
		[Inject]
		public var member : MemberVO;
		
		[Inject]
		public var model : IAppModel;

		override public function execute() : void
		{
			// save to model
			model.member = member;
			
			// remove login view
			contextView.removeChild(contextView.getChildByName("LoginView"));

			contextView.addChild(new MemberView());
		}

	}
}
