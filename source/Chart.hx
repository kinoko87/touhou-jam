package;

typedef Chart =
{
	var name:String;
	var notes:Array<Array<Dynamic>>;
	var bpm:Float;
	var speed:Int;
}

enum abstract RythmEvent(Int) from Int to Int
{
	var NONE:Int = 0; // No args
	var ATTACK:Int = 1; // Args (character name)
	var RAMP:Int = 2; // Args (trick type)
	var ROCK:Int = 3;
	var CUSTOM:Int = 4;
}
