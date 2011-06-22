package com.kevincao.rgademo.controllers 
{
	import com.kevincao.rgademo.signals.AppSignalBus;

	import org.robotlegs.mvcs.SignalCommand;
	
	public class InitSignalMappingCommand extends SignalCommand
	{

		[Inject]
		public var signalBus : AppSignalBus;

		override public function execute() : void 
		{
		}
	}
}
