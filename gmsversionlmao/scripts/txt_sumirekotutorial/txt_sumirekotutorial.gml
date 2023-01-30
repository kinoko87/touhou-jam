function txt_sumirekotutorial() {
	msg = msglang([
	
	txt("(Okay, I have to remember how to do this.)"),
	txt("Looks like there's a lot of rocks and trees... I can jump over the rocks, but the trees will hurt.)"),
	txt("(I can cut left [LEFT ARROW BUTTON] and right [RIGHT ARROW BOTTON], or duck [DOWN ARROW BUTTON] to switch lanes and avoid them.)"),
	txt("I could probably show off my moves on the snowdrifts too, hehehe. [UP ARROW BUTTON]."),
	txt("Okay, I'm ready to go!"),
	txt("Hey, hold on a second, are you not gonna tell us how to use these?", MOKOU.FROWN),
	txt("I think you can figure it out!", SUMIREKO.HAPPY),
	txt("Ah, the arrogance of youth.", AYA.FROWN),
	txt("... Alrighty then.", MOKOU.EXTREMELYSAD),
	
	],[
	
	txt("(Ok, tenho que me lembrar de como fazer isso.)"),
	txt("Parece que tem um monte de pedras e árvores… Eu posso pular sobre as pedras, mas as árvores vão machucar.)"),
	txt("(Eu posso cortar para esquerda [SETA PARA ESQUERDA] e direita [SETA PARA DIREITA], ou abaixar [SETA PARA BAIXO] para mudar de faixas e desviar delas.)"),
	txt("Eu provavelmente poderia mandar umas manobras nos montinhos de neve também, hehehe. [SETA PARA CIMA]."),
	txt("Ok, estou pronta para ir!"),
	txt("Ei, espera um pouco, você não vai nos ensinar a usar isso?", MOKOU.FROWN), 
	txt("Acho que você vai descobrir como!", SUMIREKO.HAPPY), 
	txt("Ah, a arrogância da juventude.", AYA.FROWN),
	txt("... Então tá.", MOKOU.EXTREMELYSAD),
	
	],[
	
	txt("(Vale, tengo que recordar cómo hacer esto.)"),
	txt("Parece que hay muchas rocas y árboles... Puedo saltar por encima de las rocas, pero los árboles me harán daño.)"),
	txt("(Puedo cortar a la izquierda [BOTÓN FLECHA IZQUIERDA] y a la derecha [BOTÓN FLECHA DERECHA], o agacharme [BOTÓN FLECHA ABAJO] para cambiar de carril y evitarlos.)"),
	txt("También podría lucirme en los ventisqueros, jejeje. [BOTÓN FLECHA ARRIBA]."),
	txt("Vale, ¡estoy listo para empezar!"),
	txt("Oye, espera un segundo, ¿no vas a decirnos cómo usar esto?", MOKOU.FROWN),
	txt("¡Creo que puedes averiguarlo!", SUMIREKO.HAPPY),
	txt("Ah, la arrogancia de la juventud.", AYA.FROWN),
	txt("... Muy bien entonces.", MOKOU.EXTREMELYSAD),
	
	]);
	
	endevent = function() {
		dance_start(mus.sumireko, 0);
	};
}