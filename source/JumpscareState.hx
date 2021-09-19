package;
import flixel.FlxSprite;
import flixel.*;
import flixel.tweens.FlxEase;
import flixel.tweens.FlxTween;

/**
 * ...
 * @author ...
 */
class JumpscareState extends FlxState
{

	public function new() 
	{
		super();
	}
	
	override public function create():Void 
	{
		super.create();
		
		
		var jumpscare:FlxSprite = new FlxSprite(0, 0);
		jumpscare.loadGraphic("assets/images/SEZ_WARN.png", false, 1280, 720);
		add(jumpscare);
	}
	public override function update(elapsed){
		
		
		if (FlxG.keys.justPressed.ENTER){
			PlayState.anti_seizure = false;
			FlxG.save.data.flashing = true;
			FlxG.switchState(new TitleState());
		}
		if (FlxG.keys.justPressed.BACKSPACE){
			PlayState.anti_seizure = true;
			FlxG.save.data.flashing = false;
			FlxG.switchState(new TitleState());
		}
		super.update(elapsed);
	}
	
}