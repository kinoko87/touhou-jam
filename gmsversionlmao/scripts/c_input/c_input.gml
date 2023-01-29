function c_input() {
	var i;
	var inputs = variable_struct_get_names(global.inputs);
	if typeof(self) == "struct" {
		for (i=0; i<array_length(inputs); i++) {
			variable_struct_set(self, inputs[i], global.inputs[$inputs[i]]);
		}
	} else {
		for (i=0; i<array_length(inputs); i++) {
			variable_instance_set(id, inputs[i], global.inputs[$inputs[i]]);
		}
	}
}

function c_inputupdate() {
	var inputs = variable_struct_get_names(global.inputs);
	for (i=0; i<array_length(inputs); i++) {
		global.inputs[$inputs[i]].update();
	}
}

function c_inputload() {
	nu kinput("left", [vk_left, "J"]);
	nu kinput("down", [vk_down, "K"]);
	nu kinput("up", [vk_up, "I"]);
	nu kinput("right", [vk_right, "L"]);
	nu kinput("select", ["Z", "A", vk_enter]);
	nu kinput("back", ["X", "S", vk_escape]);
	nu kinput("skip", ["C", "D", vk_control, gp_select]);
}

function kinput(name_, keys_) constructor {
	name = name_;
	key = keys_;
	hit = 0;
	hold = 0;
	drop = 0;
	
	update = function() {
		var i;
		hit = false;
		hold = false;
		drop = false;
		for (i=0; i<array_length(key); i++) {
			hit |= input_active(key[i], INPUT.PRESSED);
			hold |= input_active(key[i], INPUT.HELD);
			drop |= input_active(key[i], INPUT.RELEASED);
		}
	}
	global.inputs[$name] = self;
}

global.inputs = {};
c_inputload();