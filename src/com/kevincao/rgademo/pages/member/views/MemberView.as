/*
 * 
 * Copyright (c) 2011 kevincao.com, All Rights Reserved
 * @author		Kevin Cao
 * @email	 	kevin@kevincao.com
 * 
 */
package com.kevincao.rgademo.pages.member.views
{
	import com.bit101.components.VBox;
	import com.bit101.components.Label;

	import flash.display.Sprite;

	/**
	 * @author Kevin Cao
	 */
	public class MemberView extends Sprite
	{
		private var vbox : VBox;
		public var unameLabel : Label;
		public var emailLabel : Label;

		public function MemberView()
		{
			vbox = new VBox(this, 120, 10);
			unameLabel = new Label(vbox);
			emailLabel = new Label(vbox);
		}
	}
}
