/*
 * 
 * Copyright (c) 2011 kevincao.com, All Rights Reserved
 * @author		Kevin Cao
 * @email	 	kevin@kevincao.com
 * 
 */
package com.kevincao.rgademo.pages.member.views
{
	import com.kevincao.rgademo.pages.member.services.MemberService;
	import com.kevincao.rgademo.pages.member.signals.MemberSignalBus;

	import org.robotlegs.mvcs.Mediator;

	import flash.events.MouseEvent;


	/**
	 * @author Kevin Cao
	 */
	public class LoginMediator extends Mediator
	{
		[Inject]
		public var view : LoginView;

		[Inject]
		public var service : MemberService;

		[Inject]
		public var signalBus : MemberSignalBus;

		override public function onRegister() : void
		{
			view.loginButton.addEventListener(MouseEvent.CLICK, clickHandler);
		}

		override public function onRemove() : void
		{
			view.loginButton.removeEventListener(MouseEvent.CLICK, clickHandler);

			signalBus.loginFail.remove(loginFailHandler);
		}

		// ----------------------------------
		// handlers
		// ----------------------------------

		private function clickHandler(event : MouseEvent) : void
		{
			view.mouseChildren = false;
			
			signalBus.loginFail.add(loginFailHandler);
			service.login(view.inputText.text);
		}

		private function loginFailHandler(message : String) : void
		{
			view.mouseChildren = true;

			view.feedbackLabel.text = message;
		}

	}
}
