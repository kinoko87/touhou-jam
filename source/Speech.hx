package;

import flixel.FlxG;
import flixel.FlxSprite;
import flixel.addons.text.FlxTypeText;
import flixel.group.FlxSpriteGroup;
import flixel.text.FlxText;
import openfl.text.Font;

using StringTools;

class Speech
{
	var sprites:Map<String, FlxSprite> = [];

	public var data:Array<Array<Dynamic>>;

	var speechRunning:Bool;

	public function new() {}

	public function parse(s:String)
	{
		var stuff = []; // [["Name", "Dialogue"]]
		var lines = s.split('\n');

		for (l in lines)
		{
			if (l.startsWith('#'))
			{
				continue;
			}
			else if (l.startsWith("$NONE"))
			{
				stuff.push(['', l.split('->')[1]]);
			}
			else if (l.startsWith('show') || l.startsWith('hide'))
			{
				stuff.push(l.trim().split(' '));
			}
			else
			{
				stuff.push(l.split('->'));
			}
		}

		data = stuff;
		return stuff;
	}
}

class SpeechBox extends FlxSpriteGroup
{
	var speech:Speech;

	var box:FlxSprite;
	var nameText:FlxText;
	var speechText:FlxTypeText;
	var speechRunning:Bool = Temp.UNTRUE;

	public function new(x, y, Speech:Speech)
	{
		speech = Speech;
		box = new FlxSprite().loadGraphic("assets/images/speechbox.png");
		nameText = new FlxText(149, 129, '', 54);
		nameText.font = "Chicle";
		speechText = new FlxTypeText(149, 209, 1000, "", 38);
		speechText.font = "Chicle";
		nameText.borderSize = 2;
		nameText.borderColor = 0;
		speechText.borderSize = 2;
		speechText.borderColor = 0;
		super(x, y);
		add(box);
		add(nameText);
		add(speechText);

		speechText.completeCallback = () ->
		{
			speechRunning = false;
		}

		nameText.text = speech.data[0][0];
		speechText.resetText(speech.data[0][1]);
		speechText.start(0.04);
		speechRunning = true;
	}

	var idx:Int;

	inline function resetSpeech()
		idx = 0;

	public function doSpeech()
	{
		if ((FlxG.keys.justPressed.ENTER || FlxG.keys.justPressed.SPACE) && idx < speech.data.length)
		{
			if (!speechRunning)
			{
				idx++;
				if (speech.data[idx][0] == "show") {}
				else if (speech.data[idx][0] == "hide") {}
				else
				{
					nameText.text = speech.data[idx][0];
					speechText.resetText(speech.data[idx][1]);
					speechText.start(0.04);
				}
				speechRunning = true;
			}
			else
			{
				speechText.skip();
				speechRunning = false;
			}
		}
	}
}
