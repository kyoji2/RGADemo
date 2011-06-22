/*
 * 
 * Copyright (c) 2011 kevincao.com, All Rights Reserved
 * @author		Kevin Cao
 * @email	 	kevin@kevincao.com
 * 
 */
package com.kevincao.rgademo.pages.member.services
{
	import com.kevincao.rgademo.models.vo.MemberVO;
	import com.kevincao.rgademo.pages.member.signals.MemberSignalBus;

	/**
	 * @author Kevin Cao
	 */
	public class MemberService
	{
		[Inject]
		public var signalBus : MemberSignalBus;

		public function login(value : String) : void
		{
			// Usually, we send data to remote server and waiting for response,
			// but for demo, we just compare data locally.
			if(value == "test")
			{
				// mock member data
				var member : MemberVO = new MemberVO();
				member.uname = "test";
				member.email = "test@test.com";
				
				// dispatch throught member page's signal bus
				signalBus.loginSuccess.dispatch(member);
			}
			else
			{
				signalBus.loginFail.dispatch("User Name Incorrect! Please try \"test\" to login");
			}
		}
	}
}
