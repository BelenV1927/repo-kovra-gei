//creamos la clase carta donde estan las distintas cartas con sus respectivos palos y valores
class Carta{
	var valor
	var palo
	constructor (_palo,_valor) {
		palo= _palo
		valor= _valor
	}
	//metodo que muestra el valor de la carta
    method valor_carta(){
         return valor
    }
    
	method quiensoy(){
		var nombre = valor // aca la variable nombre se iguala al valor de la carta
		if(valor == 10)
			nombre = "Sota" // aca la variable nombre cambia a Sota y lo mismo con los siguientes
	    if(valor == 11)
	    	nombre = "Caballo"
	    if(valor == 12)
	    	nombre = "Rey"
		if(valor == 1)
		    nombre = "As"
		return "" + nombre + " de " + palo //aca se concadena el nombre y "de palo" 
	}
	
	// aca se muestra el palo 
	method palo(){
	 	 return palo
	}	
	//devuelve true o false si el valor de la carta es 7 
	method soy_siete(){
		return (valor == 7)
	}//devuelve true o false si el valor de la carta es 7 y de palo Oro
	method soy_siete_de_velo() {
		return (valor == 7 and palo == "Oro")
	}//devuelve true o false si el palo de la carta es Oro 
	method soy_oro(){
		return (palo == "Oro")
	}
}

object jugador{
	var cartasEnMano = []
	var monto = []
	var mano = true
	var puntaje = 0
	
	//metodo donde invierte el turno del jugador 
	method cambiar_turno(){
		mano = not mano 
	}
	//metodo donde devuelve la cantidad total de cartas del mazo
	method cantidad_cartas(){
		return cartasEnMano.size()
	}
	//metodo que permite recibir cartas del mazo y agregarlas a su mano
	method recibir_carta(carta) {
		cartasEnMano.add(carta)
	}
	//metodo que devuelve una carta de su mano mediante su posicion
	method sacar_carta(posicion){
		return cartasEnMano.get(posicion)
	}
	//muestra las cartas de la mano (devuelve la coleccion cartasEnMano) 
	method mostrar_cartas(){
		return cartasEnMano
	}
	
	method jugada(cartasElegidas, carta){
		var cartasTotales = cartasElegidas.add(carta)
		
	}
	
	//devuelve la cantidad de cartas que el jugador agarro en la partida
	method cantidad_en_monto() {
		return monto.size()
	}
	
	method contar_puntaje(){
		// este metodo compara la cantidad de 7ts que tiene la maquina con el jugador
		// si ambos tiene 2 cartas 7ts el punto se anula
		if(maquina.cuantos_sietes_tengo() != 2 and self.cuantos_sietes_tengo() != 2){
			//el puntaje del jugador se le suma la cantidad de cartas que este tiene 
			if(maquina.cuantos_sietes_tengo()<self.cuantos_sietes_tengo()){
			puntaje += 1
			}
		}
		//si el jugador tiene un 7 de velo se le sumara un punto
		if(self.tengo_siete_de_velo()){
			puntaje += 1
		}
		//si el jugador tiene mas carta de palo oro que la maquina se le suma un punto
		//si tienen la misma cantidad de cartas oro no se le suma el punto al jugador
		if(self.cuantos_oros_tengo() > maquina.cuantos_oros_tengo()){
			puntaje += 1
		}
		// si el jugador tiene mas cartas que la maquina entonces se le suma un punto 
		if(self.cantidad_cartas() > maquina.cantidad_cartas()){
			puntaje += 1 
		}
	}
	
	//devuelve un true o false si el jugador tiene el 7 de velo
	method tengo_siete_de_velo(){
		return monto.any({ x => x.soy_siete_de_velo()})
	}// devuelve la cantidad de 7ts que tiene 
	method cuantos_sietes_tengo(){
		return monto.count({ x => x.soy_siete()})
	}//devuelve la cantidad de cartas que tiene el palo Oro
	method cuantos_oros_tengo(){
		return monto.count({ x => x.soy_oro()})
	}
	
}

object maquina{
	var cartasEnMano = []
	var monto = []
	var mano = false
	var puntaje = 0
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
	
	method contar_puntaje(){
		// este metodo compara la cantidad de 7ts que tiene la maquina con el jugador
		// si ambos tiene 2 cartas 7ts el punto se anula
		if(jugador.cuantos_sietes_tengo() != 2 and self.cuantos_sietes_tengo() != 2){
			//el puntaje de la maquina se le suma la cantidad de cartas que este tiene 
			if (self.cuantos_sietes_tengo()>jugador.cuantos_sietes_tengo()){
			puntaje += 1
			}
		}
		//si la maquina tiene un 7 de velo se le sumara un punto
		if(self.tengo_siete_de_velo()){
			puntaje += 1
		} 
		//si la maquina tiene mas carta de palo oro que el jugador se le suma un punto
		//si tienen la misma cantidad de cartas oro no se le suma el punto a la maquina
		if(self.cuantos_oros_tengo() > jugador.cuantos_oros_tengo()){
			puntaje += 1
		}
		// si la maquina tiene mas cartas que el jugador entonces se le suma un punto 
		if(self.cantidad_cartas() > jugador.cantidad_cartas()){
			puntaje += 1 
		}
	}
	
	//devuelve un true o false si la maquina tiene el 7 de velo
	method tengo_siete_de_velo(){
		return monto.any({ x => x.soy_siete_de_velo()})
	}// devuelve la cantidad de 7ts que tiene 
	method cuantos_sietes_tengo(){
		return monto.count({ x => x.soy_siete()})
	}//devuelve la cantidad de cartas que tiene el palo Oro
	method cuantos_oros_tengo(){
		return monto.count({ x => x.soy_oro()})
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
}
