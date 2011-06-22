/*
 * 
 * Copyright (c) 2011 kevincao.com, All Rights Reserved
 * @author		Kevin Cao
 * @email	 	kevin@kevincao.com
 * 
 */
package com.kevincao.rgademo.pages.member.controllers
{
	import com.kevincao.rgademo.pages.member.views.LoginView;
	import com.kevincao.rgademo.models.IAppModel;
	import com.kevincao.rgademo.pages.member.views.MemberView;
	import org.robotlegs.mvcs.Command;

	/**
	 * @author Kevin Cao
	 */
	public class StartupCommand extends Command
	{
		[Inject]
		public var model : IAppModel;
		
		override public function execute() : void
		{
			if(model.member)
			{
				contextView.addChild(new MemberView());
			}
			else
			{
				contextView.addChild(new LoginView());
			}
		}

	}
}
