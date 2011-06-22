/*
 * 
 * Copyright (c) 2011 kevincao.com, All Rights Reserved
 * @author		Kevin Cao
 * @email	 	kevin@kevincao.com
 * 
 */
package com.kevincao.rgademo.pages.member.views
{
	import com.bit101.components.Label;
	import com.bit101.components.HBox;
	import com.bit101.components.InputText;
	import com.bit101.components.PushButton;

	import flash.display.Sprite;

	/**
	 * @author Kevin Cao
	 */
	public class LoginView extends Sprite
	{
		private var hbox : HBox;

		public var inputText : InputText;
		public var loginButton : PushButton;
		public var feedbackLabel : Label;

		public function LoginView()
		{
			name = "LoginView";
			
			hbox = new HBox(this, 120, 10);
			inputText = new InputText(hbox);
			loginButton = new PushButton(hbox, 0, 0, "login");
			feedbackLabel = new Label(hbox);
		}
	}
}
