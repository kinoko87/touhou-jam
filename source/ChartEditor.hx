package;

import Chart;
import flixel.FlxBasic;
import flixel.FlxG;
import flixel.FlxObject;
import flixel.FlxSprite;
import flixel.FlxState;
import flixel.addons.display.FlxGridOverlay;
import flixel.addons.ui.FlxInputText;
import flixel.addons.ui.FlxUIDropDownMenu;
import flixel.addons.ui.FlxUINumericStepper;
import flixel.addons.ui.FlxUITabMenu;
import flixel.group.FlxGroup.FlxTypedGroup;
import flixel.math.FlxPoint;
import flixel.text.FlxText;
import flixel.ui.FlxButton;
import flixel.util.FlxColor;
import haxe.Json;
import openfl.events.Event;
import openfl.net.FileFilter;
import openfl.net.FileReference;

class ChartEditor extends FlxState
{
	public var chart:Chart;

	private var minY:Float;
	private var maxY:Float;
	private var minTime:Float;
	private var maxTime:Float;
	private var time:Float;

	private var strumLine:FlxSprite;

	private var gridGroup:FlxTypedGroup<FlxSprite>;
	private var noteGroup:FlxTypedGroup<Note>;

	private var divisor:Float = 40;

	private var camFollow:FlxObject;

	private var hologram:FlxSprite;

	private static inline final GRID_SIZE:Int = 40;

	var UI:FlxTypedGroup<FlxSprite>;
	var noteInfos:Array<FlxText> = [];

	var curEvent:RythmEvent = 0;
	var eventArgs:Array<Dynamic>;

	public function new(?chart:Chart)
	{
		super();

		if (chart != null)
		{
			this.chart = chart;
			return;
		}
		else if (PlayState.chart != null)
		{
			this.chart = PlayState.chart;
			return;
		}

		this.chart = {
			name: 'default',
			notes: [],
			bpm: 100,
			speed: 1
		};

		FlxG.stage.window.title = "Chart Editor - " + this.chart.name;
	}

	var placementContext:String;
	var grid:FlxSprite;

	override function create()
	{
		super.create();

		FlxG.sound.playMusic('assets/music/${chart.name}.mp3');
		Conductor.bpm = chart.bpm;
		Conductor.song.pause();

		grid = new FlxSprite();
		trace(FlxG.sound.music);
		grid = FlxGridOverlay.create(GRID_SIZE, GRID_SIZE, GRID_SIZE * 3, Std.int(Conductor.songLen / divisor));
		trace(grid == null);
		add(grid);

		noteGroup = new FlxTypedGroup<Note>();
		add(noteGroup);

		strumLine = new FlxSprite(0, 0).makeGraphic(FlxG.width, 10, FlxColor.PURPLE);
		strumLine.x -= (FlxG.width / 2) -= GRID_SIZE * 2;

		hologram = new FlxSprite().makeGraphic(GRID_SIZE, GRID_SIZE, FlxColor.BLUE);
		hologram.alpha = .3;
		add(hologram);

		strumLine.alpha = .3;
		add(strumLine);

		FlxG.camera.follow(strumLine, LOCKON);

		minY = 0;
		maxY = Conductor.songLen / divisor;
		minTime = 0;
		maxTime = Conductor.songLen;
		UI = new FlxTypedGroup<FlxSprite>();

		UI.memberAdded.add((s) ->
		{
			s.scrollFactor.set();
		});
		add(UI);

		produceUI();
	}

	var bg:FlxSprite;
	var rythmEventDD:FlxUIDropDownMenu;
	var rythmEventIn:FlxInputText;
	var bpmStepper:FlxUINumericStepper;
	var saveBtn:FlxButton;
	var loadBtn:FlxButton;

	function produceUI()
	{
		bg = new FlxSprite().makeGraphic(Std.int(1280 / 4), FlxG.height, FlxColor.GRAY);
		rythmEventDD = new FlxUIDropDownMenu(10 + FlxG.camera.x, 70 - 10, FlxUIDropDownMenu.makeStrIdLabelArray(["None", "Attack", "Ramp", "Rock"], true),
			(s) ->
			{
				curEvent = Std.parseInt(s);
			});

		rythmEventIn = new FlxInputText(rythmEventDD.x + rythmEventDD.width + 20, 70 - 10, 140 + 10, "", 18);

		bpmStepper = new FlxUINumericStepper(rythmEventIn.x, rythmEventIn.y + 70 - 10, 10, chart.bpm, 0, 10000, 2);

		saveBtn = new FlxButton(bpmStepper.x, bpmStepper.y + bpmStepper.height + 20, "Save", save);
		loadBtn = new FlxButton(saveBtn.x, saveBtn.y + saveBtn.height + 20, "Load", load);

		UI.add(bg);
		UI.add(new FlxText(rythmEventDD.x, rythmEventDD.y - 20, 0, "Rythm Event", 14));
		UI.add(rythmEventDD);
		UI.add(new FlxText(rythmEventIn.x, rythmEventIn.y - 20, 0, "Rythm Event Args", 14));
		UI.add(rythmEventIn);
		UI.add(new FlxText(bpmStepper.x, bpmStepper.y - 20, 0, "BPM", 14));
		UI.add(bpmStepper);
		UI.add(saveBtn);
		UI.add(loadBtn);
	}

	override function update(elapsed:Float)
	{
		strumLine.y = mapSongPositionToY(Conductor.songPos);

		FlxG.sound.music.looped = true;

		if (!FlxG.keys.pressed.SHIFT)
			hologram.y = Math.floor(FlxG.mouse.y / GRID_SIZE) * GRID_SIZE;
		else
			hologram.y = FlxG.mouse.y;

		hologram.x = Math.floor(FlxG.mouse.x / GRID_SIZE) * GRID_SIZE;

		for (note in noteGroup)
		{
			if (note.y < strumLine.y)
				note.alpha = .4;
			else
				note.alpha = 1;
		}

		if (FlxG.mouse.justPressed || FlxG.keys.justPressed.P)
		{
			if (FlxG.mouse.overlaps(grid))
			{
				if (FlxG.mouse.overlaps(noteGroup))
				{
					for (note in noteGroup)
					{
						if (note.x == hologram.x && Math.abs(hologram.y - note.y) >= 10)
							placeNote(hologram.y);
					}
				}
				else
				{
					placeNote(hologram.y);
				}
			}
		}

		if ((FlxG.mouse.justPressedRight || FlxG.keys.justPressed.R) && FlxG.mouse.overlaps(noteGroup))
		{
			for (n in noteGroup)
			{
				if (FlxG.mouse.overlaps(n))
					removeNote(n);
			}
		}

		if (FlxG.keys.justPressed.SPACE)
		{
			if (Conductor.song.playing)
				Conductor.song.pause();
			else
				Conductor.song.play();
		}

		if (FlxG.keys.pressed.W)
		{
			Conductor.song.time -= Conductor.stepCrochet * (FlxG.keys.pressed.SHIFT ? 3 : (FlxG.keys.pressed.CONTROL ? .3 : 1));
			Conductor.song.pause();
		}
		else if (FlxG.keys.pressed.S)
		{
			Conductor.song.time += Conductor.stepCrochet * (FlxG.keys.pressed.SHIFT ? 3 : (FlxG.keys.pressed.CONTROL ? .3 : 1));
			Conductor.song.pause();
		}

		if (FlxG.keys.justPressed.SEVEN)
		{
			FlxG.switchState(new PlayState("$fromCharting$"));
			PlayState.chart = chart;
		}

		if (FlxG.keys.pressed.CONTROL && FlxG.keys.justPressed.S)
			save();
		if (FlxG.keys.pressed.CONTROL && FlxG.keys.justPressed.L)
			load();

		Conductor.bpm = chart.bpm = bpmStepper.value;

		super.update(elapsed);
	}

	function placeNote(y:Float)
	{
		var songTime = mapYToSongPosition(y);
		var data = Math.floor(hologram.x / GRID_SIZE);
		eventArgs = rythmEventIn.text.split(',');
		var n:Array<Dynamic> = [songTime, data, curEvent, eventArgs];
		var noteSprite = new Note(songTime, data, curEvent);
		noteSprite.y = y;
		noteSprite.x = hologram.x;

		chart.notes.push(n);
		noteGroup.add(noteSprite);
	}

	function placeNoteFromChart(songTime:Float, data:Int, event:RythmEvent)
	{
		var note = new Note(songTime, data, event);
		note.y = mapSongPositionToY(songTime);
		note.x = data * GRID_SIZE;
		noteGroup.add(note);
	}

	function removeNote(note:Note)
	{
		for (n in chart.notes)
		{
			if (compare(note, n))
			{
				chart.notes.remove(n);
				noteGroup.remove(note, true);
			}
		}
	}

	inline function compare(note:Note, noteData:Array<Dynamic>)
	{
		return note.songTime == noteData[0] && note.data == noteData[1];
	}

	private function mapYToSongPosition(y:Float)
	{
		var scaledY:Float = (y - minY) / (maxY - minY);
		return minTime + (scaledY * (maxTime - minTime));
	}

	private function mapSongPositionToY(songPosition:Float)
	{
		var scaledTime = (songPosition - minTime) / (maxTime - minTime);
		return minY + (scaledTime * (maxY - minY));
	}

	private inline function seek(by:Float)
	{
		return Conductor.song.time += by;
	}

	private function load()
	{
		var fr:FileReference = new FileReference();
		fr.addEventListener(Event.SELECT, load_onSelect);
		fr.addEventListener(Event.CANCEL, load_onCancel);
		fr.browse([new FileFilter("JSON files", "*.json")]);
	}

	@:noCompletion
	private function load_onSelect(e:Event)
	{
		var fr:FileReference = cast(e.target, FileReference);
		fr.addEventListener(Event.COMPLETE, load_onComplete);
		fr.load();
	}

	@:noCompletion
	private function load_onComplete(e:Event)
	{
		var fr:FileReference = cast(e.target, FileReference);
		chart = null;
		chart = cast Json.parse(fr.data.toString());

		while (noteGroup.length != 0)
			noteGroup.remove(noteGroup.members[0], true);
		for (n in chart.notes)
		{
			placeNoteFromChart(n[0], n[1], n[2]);
		}

		fr.removeEventListener(Event.COMPLETE, load_onComplete);
	}

	@:noCompletion
	private function load_onCancel(e:Event)
	{
		trace("cancelled!");
	}

	private function save()
	{
		var fr:FileReference = new FileReference();
		fr.save(Json.stringify(chart), "leJson.json");
	}
}
