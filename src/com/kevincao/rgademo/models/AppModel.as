package com.kevincao.rgademo.models
{
	import com.kevincao.rgademo.models.vo.MemberVO;
	import com.kevincao.rgademo.mvcs.AppActor;

	/*
	 * This is a shared model for using in multiple pages.
	 */
	public class AppModel extends AppActor implements IAppModel
	{
		private var _member : MemberVO;

		public function AppModel()
		{
		}

		public function get member() : MemberVO
		{
			return _member;
		}

		public function set member(value : MemberVO) : void
		{
			_member = value;
		}
	}
}
