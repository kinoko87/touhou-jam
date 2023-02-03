function txt_sumirekotutorial() {
	msg = msglang([
	
	btxt(bk_cabin),
	txt("(Okay, I have to remember how to do this.)", SUMIREKO.NEUTRAL),
	txt("Looks like there's a lot of rocks and trees... I can jump over the rocks, but the trees will hurt.)", SUMIREKO.FROWN),
	txt("(I can cut left [LEFT ARROW BUTTON] and right [RIGHT ARROW BOTTON], or duck [DOWN ARROW BUTTON] to switch lanes and avoid them.)", SUMIREKO.HAPPY),
	txt("I could probably show off my moves on the snowdrifts too, hehehe. [UP ARROW BUTTON].", SUMIREKO.EXTREMELYSAD),
	txt("Okay, I'm ready to go!", SUMIREKO.HAPPY),
	txt("Hey, hold on a second, are you not gonna tell us how to use these?", MOKOU.FROWN),
	txt("I think you can figure it out!", SUMIREKO.HAPPY),
	txt("Ah, the arrogance of youth.", AYA.FROWN),
	txt("... Alrighty then.", MOKOU.EXTREMELYSAD),
	
	],[
	
	btxt(bk_cabin),
	txt("(Ok, tenho que me lembrar de como fazer isso.)", SUMIREKO.NEUTRAL),
	txt("Parece que tem um monte de pedras e árvores… Eu posso pular sobre as pedras, mas as árvores vão machucar.)", SUMIREKO.FROWN),
	txt("(Eu posso cortar para esquerda [SETA PARA ESQUERDA] e direita [SETA PARA DIREITA], ou abaixar [SETA PARA BAIXO] para mudar de faixas e desviar delas.)", SUMIREKO.HAPPY),
	txt("Eu provavelmente poderia mandar umas manobras nos montinhos de neve também, hehehe. [SETA PARA CIMA].", SUMIREKO.EXTREMELYHAPPY),
	txt("Ok, estou pronta para ir!", SUMIREKO.HAPPY),
	txt("Ei, espera um pouco, você não vai nos ensinar a usar isso?", MOKOU.FROWN), 
	txt("Acho que você vai descobrir como!", SUMIREKO.HAPPY), 
	txt("Ah, a arrogância da juventude.", AYA.FROWN),
	txt("... Então tá.", MOKOU.EXTREMELYSAD),
	
	],[
	
	btxt(bk_cabin),
	txt("(Vale, tengo que recordar cómo hacer esto.)", SUMIREKO.NEUTRAL),
	txt("Parece que hay muchas rocas y árboles... Puedo saltar por encima de las rocas, pero los árboles me harán daño.)", SUMIREKO.FROWN),
	txt("(Puedo cortar a la izquierda [BOTÓN FLECHA IZQUIERDA] y a la derecha [BOTÓN FLECHA DERECHA], o agacharme [BOTÓN FLECHA ABAJO] para cambiar de carril y evitarlos.)", SUMIREKO.HAPPY),
	txt("También podría lucirme en los ventisqueros, jejeje. [BOTÓN FLECHA ARRIBA].", SUMIREKO.EXTREMELYHAPPY),
	txt("Vale, ¡estoy listo para empezar!", SUMIREKO.HAPPY),
	txt("Oye, espera un segundo, ¿no vas a decirnos cómo usar esto?", MOKOU.FROWN),
	txt("¡Creo que puedes averiguarlo!", SUMIREKO.HAPPY),
	txt("Ah, la arrogancia de la juventud.", AYA.FROWN),
	txt("... Muy bien entonces.", MOKOU.EXTREMELYSAD),
	
	]);
	
	endevent = function() {
	var bazinga = layer_get_id("Slope");
	layer_set_visible(bazinga, visible);
		dance_start(mus.sumireko, 0);
	};
}