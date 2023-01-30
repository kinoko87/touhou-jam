function txt_mokouwin() {
	msg = msglang([
	
	btxt(bk_title),
	txt("Oh hey, I made it down first. Would you look at that?", MOKOU.EXTREMELYHAPPY),
	txt("Wow, how'd you pick up on that so quickly!?", SUMIREKO.FROWN),
	txt("Do tell, Fujiawara-san!", AYA.HAPPY),
	txt("Heh, sorry, it's my little secret.", MOKOU.HAPPY),
	txt("Ya got some cool confidence for such a fiery individual. You sure are a fascinatin' subject, ayaya.", AYA.EXTREMELYHAPPY),
	txt("You... caught me a little rusty, I'm sure I can get you next time, Mokou!", SUMIREKO.EXTREMELYSAD),
	txt("Huh, you seem flustered. I didn't realize it was a race, Usami.", MOKOU.EXTREMELYHAPPY),
	txt("I--I, uh...", SUMIREKO.NEUTRAL),
	txt("Don't worry about it, I had fun."),
	txt("I reckon I've got what I need... I'm sure you folks got places to go, and so do I.", AYA.NEUTRAL),
	txt("Make sure to say hi to me when I deliver the paper tomorrow, eh?"),
	txt("Don't be a stranger!", AYA.EXTREMELYHAPPY),
	txt("I'll see you when I see ya again, I suppose.", MOKOU.NEUTRAL),
	txt("Wait, Mokou... You wanna get some tea in the Human Village?", SUMIREKO.HAPPY),
	txt("I'm a little off-track from what I meant to do, I'll have to decline. Sorry, Usami.", MOKOU.FROWN),
	txt("... Aww, okay. Maybe next time then. So long!", SUMIREKO.FROWN),
	txt("Maybe Sumireko isn't such a brat after all."),
	
	],[
	
	btxt(bk_title),
	txt("Ei, olha só, eu cheguei aqui primeiro!", MOKOU.EXTREMELYHAPPY),
	txt("Uau, como você é tão boa nisso, tão rápido assim!?", SUMIREKO.FROWN),
	txt("É, me conta Fujiawara-san!", AYA.HAPPY),
	txt("Heh, desculpa, é segredo.", MOKOU.HAPPY),
	txt("Não adianta dar uma de fria quando se é tão fogosa, ayaya! Você é uma figura mesmo.", AYA.EXTREMELYHAPPY),
	txt("Eu… só estou um pouco enferrujada, tenho certeza de que te pego na próxima vez, Mokou!", SUMIREKO.EXTREMELYSAD),
	txt("Ué, você parece frustrada. Eu não sabia que era uma corrida, Usami.", MOKOU.EXTREMELYHAPPY),
	txt("E-eu, um...", SUMIREKO.NEUTRAL),
	txt("Não se preocupe com isso, eu me diverti."),
	txt("Acho que peguei tudo que precisava… Tenho certeza que vocês têm outros afazeres, e eu também.", AYA.NEUTRAL),
	txt("Me dê um oi quando eu for entregar o jornal amanhã, hein?"),
	txt("Não me deixe no vácuo!", AYA.EXTREMELYHAPPY),
	txt("Vou pensar no caso.", MOKOU.NEUTRAL),
	txt("Espera, Mokou… Você quer tomar um chá lá no Vilarejo Humano?", SUMIREKO.HAPPY),
	txt("Eu fugi um pouco do que tinha que fazer, então vou ter que recusar. Desculpa Usami.", MOKOU.FROWN),
	txt("Ahh, ok. Talvez na próxima, então... Até mais!", SUMIREKO.FROWN),
	txt("(Pode ser que a Sumireko não seja só uma pirralha no final das contas.)"),
	
	],[
	
	btxt(bk_title),
	txt("Yo bajé primero. ¿Quieres mirar eso?", MOKOU.EXTREMELYHAPPY),
	txt("¿Cómo te has dado cuenta tan rápido?", SUMIREKO.FROWN),
	txt("¡Cuéntenoslo, Srta. Fujiawara!", AYA.HAPPY),
	txt("Lo siento, es mi pequeño secreto.", MOKOU.HAPPY),
	txt("Tienes una confianza genial para ser un individuo tan fogoso. Eres un sujeto fascinante, ayaya.", AYA.EXTREMELYHAPPY),
	txt("Tú... me has pillado un poco oxidado, ¡estoy seguro de que podré contigo la próxima vez, Mokou!", SUMIREKO.EXTREMELYSAD),
	txt("¿Hmm? Pareces enfadado. No me había dado cuenta de que era una carrera, Usami", MOKOU.EXTREMELYHAPPY),
	txt("Yo, eh...", SUMIREKO.NEUTRAL),
	txt("No te preocupes, me divertí."),
	txt("Creo que tengo lo que necesito... Seguro que vosotros tenéis sitios a los que ir, y yo también.", AYA.NEUTRAL),
	txt("Asegúrate de saludarme cuando entregue el periódico mañana, ¿eh?"),
	txt("¡No seas un extraño!", AYA.EXTREMELYHAPPY),
	txt("Te veré cuando te vuelva a ver, supongo.", MOKOU.NEUTRAL),
	txt("Espera, Mokou... ¿Quieres tomar un té en la Human Village?", SUMIREKO.HAPPY),
	txt("Me he desviado un poco de lo que quería hacer, tendré que declinar. Lo siento, Usami.", MOKOU.FROWN),
	txt("... Vale. Tal vez la próxima vez entonces. Hasta la vista.", SUMIREKO.FROWN),
	txt("(Tal vez Sumireko no sea tan mocosa después de todo.)", MOKOU.HAPPY),
	
	]);
	
	endevent = function() {room_goto(title)};
}