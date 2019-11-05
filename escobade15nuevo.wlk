class Carta{
	var valor
	var palo
	constructor (_palo,_valor) {
		palo= _palo
		valor= _valor
	}
    method valor_carta(){
         return valor
    }
    
	method quiensoy(){
		var nombre = valor
		if(valor == 10)
			nombre = "Sota"
	    if(valor == 11)
	    	nombre = "Caballo"
	    if(valor == 12)
	    	nombre = "Rey"
		if(valor == 1)
		    nombre = "As"
		return "" + nombre + " de " + palo
	}
	
	method palo(){
	 	 return palo
	}	
	
	method soy_siete(){
		return (valor == 7)
	}
	method soy_siete_de_velo() {
		return (valor == 7 and palo == "Oro")
	}
}

object jugador{
	var cartasEnMano = []
	var monto = []
	var puntaje = 0
	
	method cantidad_cartas(){
		return cartasEnMano.size()
	}
	
	method recibir_carta(carta) {
		cartasEnMano.add(carta)
	}
}

object maquina{
	var cartasEnMano = []
	var monto = []
	var puntaje = 0
	
	method cantidad_cartas(){
		return cartasEnMano.size()
	}
	
	method recibir_carta(carta) {
		cartasEnMano.add(carta)
	}
	
}

object mazo{
	var cartas = []
	
	method cantidad_de_cartas(){
		return cartas.size()
	}
	
	method pedir_carta(){
		var carta_elegida = cartas.anyOne()
		cartas.remove(carta_elegida)
		return carta_elegida
	}
	
	method crear_cartas(){
		(1..10).forEach({n => cartas.add(new Carta("Oro", n))})
		(1..10).forEach({n => cartas.add(new Carta("Espada", n))})
		(1..10).forEach({n => cartas.add(new Carta("Basto", n))})
		(1..10).forEach({n => cartas.add(new Carta("Copa", n))})
	}
}

object juego{
	var cartas_mesa = []
	var jugadores = []
	var turno=1
	var carta=0 
    
    method repartir_cartas(){
    	// el jugador recibe 3 cartas al azar provenientes del mazo
    	(1..3).forEach({ x => jugador.recibir_carta( mazo.pedir_carta() ) }) 
    	(1..3).forEach({ x => maquina.recibir_carta( mazo.pedir_carta() ) }) 
    }
   
   
   
   
   
	
}
