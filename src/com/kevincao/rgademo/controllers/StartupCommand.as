package com.kevincao.rgademo.controllers 
{
	import com.kevincao.rgademo.models.IAppModel;
	
	import org.robotlegs.mvcs.Command;
	
	public class StartupCommand extends Command 
	{
		/*
		 * force instantiate model in main application domain can avoid memeory leak issue.
		 */
		[Inject]
		public var model : IAppModel;
		
		override public function execute() : void 
		{
			
		}
	}
}
