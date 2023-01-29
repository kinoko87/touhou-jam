package;

import flixel.FlxSprite;

class Character extends FlxSprite
{
	var isPlr = false;

	public var name:String;

	public var isTopLane:Bool = false; // for where to spawn
	public var tailPlr:Bool = false;

	public function new(x, y, name:String)
	{
		this.name = name;
		super(x, y);
	}
}

class Player extends Character
{
	public function new(x, y, name:String)
	{
		super(x, y, name);
		isPlr = true;
	}
}
