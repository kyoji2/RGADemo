/*
 * 
 * Copyright (c) 2011 kevincao.com, All Rights Reserved
 * @author		Kevin Cao
 * @email	 	kevin@kevincao.com
 * 
 */
package com.kevincao.rgademo.pages.member.controllers
{
	import com.kevincao.rgademo.pages.member.signals.MemberSignalBus;

	import org.robotlegs.mvcs.SignalCommand;

	/**
	 * @author Kevin Cao
	 */
	public class InitSignalMappingCommand extends SignalCommand
	{
		[Inject]
		public var signalBus : MemberSignalBus;

		override public function execute() : void
		{
			signalCommandMap.mapSignal(signalBus.loginSuccess, LoginSuccessCommand);
		}

	}
}
