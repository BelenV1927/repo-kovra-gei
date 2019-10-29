object juego {
	var cartas_mesa=[]
	var cartas_mano_jugador=[]
	var cartas_mano_maquina=[]
	var cartas_mazo=[]
	var cartas_elegidas=[]
	var monto_jugador=[]
	var monto_maquina=[]
	var puntaje_jugador = 0
	var puntaje_maquina = 0
	var aux=0
	var turno=1
	method crear_mazo() {
		(1..10).forEach({n => cartas_mazo.add(new Cartas("oro",n))})
		(1..10).forEach({n => cartas_mazo.add(new Cartas("espada",n))})
		(1..10).forEach({n => cartas_mazo.add(new Cartas("basto",n))})
		(1..10).forEach({n => cartas_mazo.add(new Cartas("copa",n))})
	}
	method ver_cantidad_cartas_mazo() {
		return cartas_mazo.size()
		}
		method ver_cantidad_cartas_mesa() {
			return cartas_mesa.size()
			}
	method repartir_cartas_a_mesa() {
		aux= cartas_mazo.anyOne()
		cartas_mazo.remove(aux)
		cartas_mesa.add(aux)
	}
	method dar_carta_a_jugador() {
		aux=cartas_mazo.anyOne()
		cartas_mazo.remove(aux)
		cartas_mano_jugador.add(aux)
               
	}
	method dar_carta_a_maquina() {
		aux=cartas_mazo.anyOne()
		cartas_mazo.remove(aux)
		cartas_mano_maquina.add(aux)
	}
	method repartir_carta_a_jugadores () {
		(1..3).forEach{n => self.dar_carta_a_jugador()}
		(1..3).forEach{n => self.dar_carta_a_maquina()}
	}
	method repartir_todo() {
		self.repartir_carta_a_jugadores()
		(1..4).forEach{n => self.repartir_cartas_a_mesa()}
	}
	method jugador_dejar_carta(nombre) {
		aux = cartas_mano_jugador.find({ x => x.quiensoy() == nombre} )
		cartas_mano_jugador.remove(aux)
		cartas_mesa.add(aux)
		self.cambiar_turno()
		
	}
        method maquina_dejar_carta(nombre){
               aux= cartas_mano_maquina.find({ x => x.quiensoy() == nombre} )
               cartas_mano_maquina.remove(aux)
               cartas_mesa.add(aux)
               self.cambiar_turno()
	}
	
	method comparar_cartas(carta_tirada, cartas_seleccionadas){
		cartas_elegidas.add(cartas_seleccionadas)
		cartas_elegidas.add(carta_tirada)
		if(cartas_elegidas.count({x => x.valor_carta()}) == 15){
			if(turno == 1){
				monto_jugador.add(cartas_elegidas)
			}else{
				monto_maquina.add(cartas_elegidas)	
			}
			cartas_mesa.remove()
		}
		cartas_elegidas.clear()
		self.cambiar_turno()
	}
	
   	method ver_cartas_jugador() {
		return cartas_mano_jugador
	}
	method ver_cartas_mesa() {
		return cartas_mesa
	}
        method turno_actual(){
        return turno
        }

	method cambiar_turno(){
		turno * -1
	}
	method  cantidad() {
		return monto_jugador.size() >= 20
        
	}
        method cantidad_actual_jugador() {
                return monto_jugador.size()
                }

        method cantidad_actual_maquina() {
               return monto_maquina.size()
               }
   
	method setenta_jugador() {
		var sietes = monto_jugador.filter{x => x.soy_siete()}
		if(sietes.any({x => x.palo() == "oro"}) and sietes.any({x => x.palo() == "espada"}) and sietes.any({x => x.palo() == "basto"}) and sietes.any({x => x.palo() == "copa"}))
			puntaje_jugador++;
	}
	method setenta_maquina() {
		var sietes = monto_maquina.filter{x => x.soy_siete()}
		if(sietes.any({x => x.palo() == "oro"}) and sietes.any({x => x.palo() == "espada"}) and sietes.any({x => x.palo() == "basto"}) and sietes.any({x => x.palo() == "copa"}))
			puntaje_maquina++;
	}
	method siete_de_velo_jugador(){
		if(monto_jugador.find({x => x.soy_siete_de_velo()})){
			puntaje_jugador++;
		}
	}
	method siete_de_velo_maquina(){
		if(monto_maquina.any({x => x.soy_siete_de_velo()})){
			puntaje_maquina++;
		}
	}
        method es_escoba() {
                return cartas_mesa.count({x=>x.valor_carta()})
          }
          
          }

class Cartas {
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
		if (valor <= 7 ) {
		return valor + "de" + palo
		}
		else {
			if (valor == 8) {
				return "Sota" + "de" + palo
				
			}
			else {
				if (valor == 9) {
					return "Caballo" + "de" + palo
				}
				else {
					return "Rey" + "de" + palo
				}
			}
		}
	}
	 method palo(){
	 	 return palo
	 }
	
	
	method soy_siete(){
		return (valor == 7)
	}
	method soy_siete_de_velo() {
		return (valor == 7) and (palo == "oro")
	}
}
