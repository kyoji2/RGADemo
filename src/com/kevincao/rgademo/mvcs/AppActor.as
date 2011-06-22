package com.kevincao.rgademo.mvcs
{
	import com.kevincao.rgademo.signals.AppSignalBus;

	import org.robotlegs.mvcs.Actor;

	public class AppActor extends Actor
	{
		[Inject]
		public var signalBus : AppSignalBus;
	}
}
