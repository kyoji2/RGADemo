/*
 * 
 * Copyright (c) 2011 kevincao.com, All Rights Reserved
 * @author		Kevin Cao
 * @email	 	kevin@kevincao.com
 * 
 */
package com.kevincao.rgademo.pages.member.views
{
	import com.kevincao.rgademo.models.IAppModel;

	import org.robotlegs.mvcs.Mediator;

	/**
	 * @author Kevin Cao
	 */
	public class MemberMediator extends Mediator
	{
		[Inject]
		public var view : MemberView;

		[Inject]
		public var model : IAppModel;

		override public function onRegister() : void
		{
			view.unameLabel.text = "Welcome! " + model.member.uname;
			view.emailLabel.text = model.member.email;
		}

	}
}
