/*
 * 
 * Copyright (c) 2011 kevincao.com, All Rights Reserved
 * @author		Kevin Cao
 * @email	 	kevin@kevincao.com
 * 
 */
package com.kevincao.rgademo.pages.member.context
{
	import com.kevincao.rgademo.pages.member.controllers.InitSignalMappingCommand;
	import com.kevincao.rgademo.pages.member.controllers.StartupCommand;
	import com.kevincao.rgademo.pages.member.services.MemberService;
	import com.kevincao.rgademo.pages.member.signals.MemberSignalBus;
	import com.kevincao.rgademo.pages.member.views.LoginMediator;
	import com.kevincao.rgademo.pages.member.views.LoginView;
	import com.kevincao.rgademo.pages.member.views.MemberMediator;
	import com.kevincao.rgademo.pages.member.views.MemberView;

	import org.robotlegs.base.ContextEvent;
	import org.robotlegs.core.IInjector;
	import org.robotlegs.mvcs.ModuleSignalContext;

	import flash.display.DisplayObjectContainer;
	import flash.system.ApplicationDomain;

	/**
	 * @author Kevin Cao
	 */
	public class MemberContext extends ModuleSignalContext
	{
		public function MemberContext(contextView : DisplayObjectContainer = null, autoStartup : Boolean = true, parentInjector : IInjector = null, applicationDomain : ApplicationDomain = null)
		{
			super(contextView, autoStartup, parentInjector, applicationDomain);
		}

		override public function startup() : void
		{
			injector.mapSingleton(MemberSignalBus);
			injector.mapSingleton(MemberService);

			mediatorMap.mapView(LoginView, LoginMediator);
			mediatorMap.mapView(MemberView, MemberMediator);

			commandMap.mapEvent(ContextEvent.STARTUP_COMPLETE, InitSignalMappingCommand, ContextEvent, true);
			commandMap.mapEvent(ContextEvent.STARTUP_COMPLETE, StartupCommand, ContextEvent, true);

			super.startup();
		}

	}
}
