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
	method soy_oro(){
		return palo == "Oro"
}

object jugador{
	var cartasEnMano = []
	var monto = []
	var mano = true
	
	method cambiar_turno(){
		mano = not mano 
	}
	
	method cantidad_cartas(){
		return cartasEnMano.size()
	}
	
	method recibir_carta(carta) {
		cartasEnMano.add(carta)
	}
	
	method sacar_carta(posicion){
		return cartasEnMano.get(posicion)
	}
	
	method mostrar_cartas(){
		return cartasEnMano
	}
	
	method jugada(cartasElegidas, carta){
		var cartasTotales = cartasElegidas.add(carta)
	}
	method cantidad_en_monto() {
		return monto.size()
	}
	method tengo_siete_de_velo(){
		return monto.any({ x => x.soy_siete_de_velo()})
	}
	method cuantos_sietes_tengo(){
		return monto.filter({ x => x.soy_siete()})
	}
	method cuantos_oros_tengo(){
		return monto.filter({ x => x.soy_oro()})
	}
	
}

object maquina{
	var cartasEnMano = []
	var monto = []
	var mano = false
	
	method cambiar_turno(){
		mano = not mano 
	}
	
	method cantidad_cartas(){
		return cartasEnMano.size()
	}
	
	method recibir_carta(carta) {
		cartasEnMano.add(carta)
	}
	
	method sacar_carta(posicion){
		return cartasEnMano.get(posicion)
	}
	
	method mostrar_cartas(){
		return cartasEnMano
	}
	method cantidad_en_monto() {
		return monto.size()
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
	var puntos_jugador=0
	var puntos_maquina=0
    
	method repartir_cartas(){
    		// el jugador recibe 3 cartas al azar provenientes del mazo
    		(1..3).forEach({ x => jugador.recibir_carta( mazo.pedir_carta() ) }) 
    		(1..3).forEach({ x => maquina.recibir_carta( mazo.pedir_carta() ) }) 
   	}
	method repartir_cartas_mesa(){
   		(1..4).forEach({ x =>  cartas_mesa.add(mazo.pedir_carta())  })
   	}
 
	method sacar_carta_mesa(posicion){
		return cartas_mesa.get(posicion)
   	}
	
	method mostrar_cartas_mesa(){
   		return cartas_mesa
   	}
	method puntos_siete_de_velo(){
		if (jugador.tengo_siete_de_velo()){
			puntos_jugador= puntos_jugador + 1
		}
		else {
			puntos_maquina= puntos_maquina + 1
		}
	}
	method puntos_setenta(){
		if (jugador.cuantos_sietes_tengo() > 2){
			puntos_jugador=puntos_jugador+1
		}
		else {
			if (jugador.cuantos_sietes_tengo() < 2)
				puntos_maquina=puntos_maquina+1
			}
		}
	}
	method puntos_cartas(){
		if(jugador.cantidad_en_monto()>20){
			puntos_jugador=puntos_jugador + 1
			}
		else {
			if(jugador.cantidad_en_monto()<20){
				puntos_maquina=puntos_maquina+1
			}
		}
	}
	method puntos_oros(){
		if(jugador.cuantos_oros_tengo()>5){
			puntos_jugador=puntos_jugador + 1
		}
		else{
			if (jugador.cuantos_oros_tengo()<5){
				puntos_maquina=puntos_mquina+1
			}
		}
	}
}
