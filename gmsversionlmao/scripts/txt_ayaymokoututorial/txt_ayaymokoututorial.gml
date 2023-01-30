function txt_ayaymokoututorial() {
	msg = msglang([
	
	btxt(bk_cabin),
	txt("Okay, let me tell you how to use these!", SUMIREKO.EXTREMELYHAPPY),
	txt("Don't worry about going fast, just focus on cutting left [BUTTON] and right [BUTTON] if something gets in the way. Gravity will do the rest.", SUMIREKO.HAPPY),
	txt("And duck trees! Those'll keep ya down for awhile, ayaya. [DOWN ARROW BUTTON]", AYA.HAPPY),
	txt("Oh, and if you hit a ramp, you can do some cool tricks if you want![UP ARROW BUTTON]"),
	txt("That should be it!", SUMIREKO.NEUTRAL),
	txt("Gotcha.", AYA.NEUTRAL),
	txt("Sounds easy enough.", MOKOU.HAPPY),
	txt("Let's get ready to go then!", SUMIREKO.HAPPY),
	
	],[
	
	btxt(bk_cabin),
	txt("Ok, deixa eu te explicar isso!", SUMIREKO.EXTREMELYHAPPY),
	txt("Não se preocupe em ir rápido, só foque em desviar para esquerda [SETA PARA ESQUERDA] e direita [SETA PARA DIREITA] se algo entrar no caminho. A gravidade vai cuidar do resto.", SUMIREKO.HAPPY), 
	txt("E abaixe das árvores! Ou elas vão te fazer comer neve, ayaya. [SETA PARA BAIXO]", AYA.HAPPY),
	txt("Ah, e se você subir em uma rampa, você pode mandar umas manobras legais se quiser! [SETA PARA CIMA]"),
	txt("E é isso!", SUMIREKO.NEUTRAL),
	txt("Saquei.", AYA.NEUTRAL),
	txt("Parece fácil.", MOKOU.HAPPY),
	txt("Vamos nos aprontar para descer então!", SUMIREKO.HAPPY),
	
	],[
	
	btxt(bk_cabin),
	txt("¡Bien, déjame decirte cómo usar esto!", SUMIREKO.EXTREMELYHAPPY),
	txt("No te preocupes por ir rápido, concéntrate en cortar a la izquierda [BOTÓN FLECHA IZQUIERDA] y a la derecha [BOTÓN FLECHA AL DERECHA] si algo se interpone. La gravedad hará el resto.", SUMIREKO.HAPPY),
	txt("¡Y esquiva los árboles! Esos te mantendrán agachado un rato, ayaya. [BOTÓN FLECHA ABAJO]", AYA.HAPPY),
	txt("¡Oh, y si te encuentras con una rampa, puedes hacer algunos trucos chulos si quieres![BOTÓN FLECHA ARRIBA]"),
	txt("¡Ya está!", SUMIREKO.NEUTRAL),
	txt("Entendido.", AYA.NEUTRAL),
	txt("Parece fácil.", MOKOU.HAPPY),
	txt("¡Preparémonos para partir!", SUMIREKO.HAPPY),
	
	]);
	
	endevent = function() {
		if global.playablechoice == "mokou" {
			dance_start(mus.mokou, 0);
		} else {
			dance_start(mus.aya, 0);
		}
	};
}