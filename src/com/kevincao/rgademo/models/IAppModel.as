package com.kevincao.rgademo.models
{
	import com.kevincao.rgademo.models.vo.MemberVO;

	public interface IAppModel
	{
		function get member() : MemberVO;

		function set member(value : MemberVO) : void;
	}
}
