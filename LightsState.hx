package;

import flixel.FlxG;
import flixel.FlxSprite;
import flixel.FlxSubState;
import flixel.text.FlxText;
import flixel.util.FlxColor;
import flixel.effects.FlxFlicker;
import lime.app.Application;
import flixel.addons.transition.FlxTransitionableState;
import flixel.tweens.FlxTween;
import flixel.util.FlxTimer;
import ui.FlxVirtualPad;

/**
 * ...
 * @author MateusX02 e Shadow Mario
 */
class LightsState extends WarningState
{
	public static var leftState:Bool = false;

	var warnText:FlxText;
	var virtualpad:FlxVirtualPad;
	
	override function create()
	{
		super.create();

		var bg:FlxSprite = new FlxSprite().makeGraphic(FlxG.width, FlxG.height, FlxColor.BLACK);
		add(bg);

		warnText = new FlxText(0, 0, FlxG.width,
			"Opa cara!\n
			Esse mod tem algumas luzes piscantes!\n
			Pressione A ou Enter para desativar as luzes piscantes.\n
			Press B ou Backscape para ignorar essa mensagem.\n
			Você foi avisado!",
			32);
		warnText.setFormat("VCR OSD Mono", 32, FlxColor.WHITE, CENTER);
		warnText.screenCenter(Y);
		add(warnText);
		
		
		virtualpad = new FlxVirtualPad(NONE, A);
		add(virtualpad);
	}
	override function update(elapsed:Float){
		
		
		if (virtualpad.buttonA.justPressed){
			FlxG.save.data.flashing = true;
			FlxG.switchState(new TitleState());
		}
		if (virtualpad.buttonA.justPressed){
			FlxG.save.data.flashing = false;
			FlxG.switchState(new TitleState());
		}
		super.update(elapsed);
	}
	
}