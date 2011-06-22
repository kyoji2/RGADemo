package com.kevincao.rgademo.contexts
{
	import com.kevincao.robotgaia.ModulePageMediator;

	import com.kevincao.rgademo.controllers.InitSignalMappingCommand;
	import com.kevincao.rgademo.controllers.StartupCommand;

	import com.kevincao.rgademo.models.AppModel;
	import com.kevincao.rgademo.models.IAppModel;

	import com.kevincao.rgademo.signals.AppSignalBus;

	import org.robotlegs.base.ContextEvent;
	import org.robotlegs.base.ViewInterfaceMediatorMap;
	import org.robotlegs.core.IMediatorMap;
	import org.robotlegs.mvcs.ModuleSignalContext;
	import org.robotlegs.utilities.modular.core.IModule;

	import flash.display.DisplayObjectContainer;

	public class MainContext extends ModuleSignalContext
	{

		public function MainContext(contextView : DisplayObjectContainer)
		{
			super(contextView);
		}

		override public function startup() : void
		{
			// signals
			injector.mapSingleton(AppSignalBus);

			// service
			

			// model
			injector.mapSingletonOf(IAppModel, AppModel);

			// init commands
			commandMap.mapEvent(ContextEvent.STARTUP_COMPLETE, InitSignalMappingCommand, ContextEvent, true);
			commandMap.mapEvent(ContextEvent.STARTUP_COMPLETE, StartupCommand, ContextEvent, true);

			// init mediators
			mediatorMap.mapView(IModule, ModulePageMediator);

			super.startup();
		}

		override protected function get mediatorMap() : IMediatorMap
		{
			return _mediatorMap ||= new ViewInterfaceMediatorMap(contextView, createChildInjector(), reflector);
		}
	}
}