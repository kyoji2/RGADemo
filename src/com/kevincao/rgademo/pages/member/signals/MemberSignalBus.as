/*
 * 
 * Copyright (c) 2011 kevincao.com, All Rights Reserved
 * @author		Kevin Cao
 * @email	 	kevin@kevincao.com
 * 
 */
package com.kevincao.rgademo.pages.member.signals
{
	import com.kevincao.rgademo.models.vo.MemberVO;

	import org.osflash.signals.Signal;

	/**
	 * @author Kevin Cao
	 */
	public class MemberSignalBus
	{
		public var loginSuccess : Signal = new Signal(MemberVO);
		public var loginFail : Signal = new Signal(String);
	}
}
