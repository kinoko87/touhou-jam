package;

import flixel.FlxSprite;

class Obstacle extends FlxSprite
{
	public var songTime:Float;

	public function new(songTime:Float)
	{
		super();
		this.songTime = songTime;
	}
}
