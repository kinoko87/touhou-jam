package;

import Character.Player;
import Chart.RythmEvent;
import Speech.SpeechBox;
import flixel.FlxG;
import flixel.FlxSprite;
import flixel.FlxState;
import openfl.Assets;

class PlayState extends RythmState
{
	public static var chart:Chart;

	var topNPC:Character;
	var bottomNPC:Character;

	public var player:Player;

	var rocks:Array<FlxSprite> = [];

	public function new(song:String)
	{
		super();
		FlxG.stage.window.title = "2hu winter rythm";
	}

	var speechb:SpeechBox;
	var speech = new Speech();

	override public function create()
	{
		super.create();
	}

	override public function update(elapsed:Float)
	{
		var topLaneFight:Bool = FlxG.keys.justPressed.Z;
		var bottomLaneFight:Bool = FlxG.keys.justPressed.X;
		#if debug
		if (FlxG.keys.justPressed.SEVEN)
			FlxG.switchState(new ChartEditor());
		#end
		speechb.doSpeech();

		for (n in chart.notes)
		{
			showEnemies(n);
		}

		super.update(elapsed);
	}

	function showEnemies(note:Array<Dynamic>)
	{
		if (note[2] != RythmEvent.ATTACK)
			return;
		if (note[0] - Conductor.songPos > -700)
		{
			if (note[1] == 0)
			{
				topNPC.tailPlr = true;
			}
			else
			{
				bottomNPC.tailPlr = true;
			}
		}
	}

	function updateObstacles() {}
}
