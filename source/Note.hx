import Chart.RythmEvent;
import flixel.FlxG;
import flixel.FlxSprite;
import flixel.util.FlxColor;

class Note extends FlxSprite
{
	public var songTime:Float;
	public var data:Int;

	public var event:RythmEvent;

	public function new(SongTime:Float, Data:Int, ?Event:RythmEvent)
	{
		super();
		songTime = SongTime;
		data = Data;
		event = Event;

		var pth = 'assets/images/icon-';
		switch (Event)
		{
			case RythmEvent.NONE | RythmEvent.CUSTOM:
				loadGraphic(pth + 'note.png');
			case RythmEvent.ATTACK:
				loadGraphic(pth + 'attack.png');
			case RythmEvent.RAMP:
				loadGraphic(pth + 'ramp.png');
			case RythmEvent.ROCK:
				loadGraphic(pth + 'rock.png');
		}
	}

	inline function getTimeDist()
		return FlxG.sound.music.time - songTime;
}
