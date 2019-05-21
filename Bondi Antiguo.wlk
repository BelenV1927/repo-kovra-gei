object bondi {
		var combustible=500
		var capacidad_tanque=500
		var precio_combustible=2
		var ganancia=0
		var cantpasjmax=50
		var cant_pasj=0
		var direccion=1
		var paradaactual=0
		var precio=20
		var precio_ult_parada= precio/4
		var extra_parada_1A=0
		var extra_parada_2A=0
		var extra_parada_3A=0
		var extra_parada_4A=0
		var extra_parada_1B=0
		var extra_parada_2B=0
		var extra_parada_3B=0
		var extra_parada_4B=0
		var aux=0
		method sigparada() {
			combustible= combustible-(10 + 0.2 * cant_pasj)
			if(direccion==1) {
				paradaactual=paradaactual+1
				if(paradaactual==1) {
					cant_pasj=cant_pasj - paradas.pasj1bajanA()
					if(cant_pasj<0) {
						cant_pasj=0
						return "Proceso terminado"
									}
					aux=cant_pasj	
					cant_pasj=cant_pasj + paradas.pasj1subenA()
					if(cant_pasj>cantpasjmax) {
						cant_pasj=cantpasjmax
						extra_parada_1A=cantpasjmax - aux
						extra_parada_1A=paradas.pasj1subenA() - extra_parada_1A
						return "Proceso terminado"
						}
					ganancia=ganancia + paradas.pasj1subenA() * precio
					return "Combustible restante" + combustible + "Ganancia haste el momento" + ganancia + "Pasajeros en BONDI" + cant_pasj
									}
				if(paradaactual==2) {
					cant_pasj=cant_pasj - paradas.pasj2bajanA()
					if(cant_pasj<0) {
						cant_pasj=0
						return "Proceso terminado"
					}
					aux=cant_pasj	
					cant_pasj=cant_pasj + paradas.pasj2subenA()
					if(cant_pasj>cantpasjmax) {
						cant_pasj=cantpasjmax
						extra_parada_2A=cantpasjmax - aux
						extra_parada_2A = paradas.pasj2subenA() - extra_parada_2A
						return "Proceso terminado"
						}
					ganancia=ganancia + paradas.pasj2subenA() * precio
					return "Combustible restante" + combustible + "Ganancia haste el momento" + ganancia + "Pasajeros en BONDI" + cant_pasj
					}
				if(paradaactual==3) {
					cant_pasj=cant_pasj - paradas.pasj3bajanA()
					if(cant_pasj<0) {
						cant_pasj=0
						return "Proceso terminado"
					}
					aux=cant_pasj	
					cant_pasj=cant_pasj + paradas.pasj3subenA()
					if(cant_pasj>cantpasjmax) {
						cant_pasj=cantpasjmax
						extra_parada_3A=cantpasjmax - aux
						extra_parada_3A=paradas.pasj3subenA() - extra_parada_3A
						return "Proceso terminado"
						}
					ganancia=ganancia + paradas.pasj3subenA() * precio
					return "Combustible restante" + combustible + "Ganancia haste el momento" + ganancia + "Pasajeros en BONDI" + cant_pasj
					}
				if(paradaactual==4) {
					cant_pasj=cant_pasj - paradas.pasj4bajanA()
					if(cant_pasj<0) {
						cant_pasj=0
						return "Proceso terminado"
					}
					aux=cant_pasj	
					cant_pasj=cant_pasj + paradas.pasj4subenA()
					if(cant_pasj>cantpasjmax) {
						cant_pasj=cantpasjmax
						extra_parada_4A=cantpasjmax - aux
						extra_parada_4A=paradas.pasj4subenA() - extra_parada_4A
						return "Proceso terminado"
						}
					ganancia=ganancia + paradas.pasj4subenA() * precio_ult_parada
					return "Combustible restante" + combustible + "Ganancia haste el momento" + ganancia + "Pasajeros en BONDI" + cant_pasj
					}
				if(paradaactual==5) {
					cant_pasj=0
					direccion=0
					return "Unica oportunidad para reabastecer tanque. Combustible restante" + combustible + "Ganancia haste el momento" + ganancia
					}
							}
				else{
			if(direccion==0){
				paradaactual=paradaactual-1
				if(paradaactual==4) {
					cant_pasj=cant_pasj - paradas.pasj4bajanB()
					if(cant_pasj<0) {
						cant_pasj=0
						return "Proceso terminado"
					}
					aux=cant_pasj
					cant_pasj=cant_pasj + paradas.pasj4subenB()
					if(cant_pasj>cantpasjmax) {
						cant_pasj=cantpasjmax
						extra_parada_4B=cantpasjmax - aux
						extra_parada_4B=paradas.pasj4subenB() - extra_parada_4B
						return "Proceso terminado"
						}
					ganancia=ganancia + paradas.pasj4subenB() * precio
					return "Combustible restante" + combustible + "Ganancia haste el momento" + ganancia + "Pasajeros en BONDI" + cant_pasj
					} 
				if(paradaactual==3) {
					cant_pasj=cant_pasj - paradas.pasj3bajanB()
					if(cant_pasj<0) {
						cant_pasj=0
						return "Proceso terminado"
					}
					aux=cant_pasj
					cant_pasj=cant_pasj + paradas.pasj3subenB()
					if(cant_pasj>cantpasjmax) {
						cant_pasj=cantpasjmax
						extra_parada_3B=cantpasjmax - aux
						extra_parada_3B=paradas.pasj3subenB() - extra_parada_3B
						return "Proceso terminado"
						}
					ganancia=ganancia + paradas.pasj3subenB() * precio
					return "Combustible restante" + combustible + "Ganancia haste el momento" + ganancia + "Pasajeros en BONDI" + cant_pasj
					} 
				if(paradaactual==2) {
					cant_pasj=cant_pasj - paradas.pasj2bajanB()
					if(cant_pasj<0) {
						cant_pasj=0
						return "Proceso terminado"
					}
					aux=cant_pasj
					cant_pasj=cant_pasj + paradas.pasj2subenB()
					if(cant_pasj>cantpasjmax) {
						cant_pasj=cantpasjmax
						extra_parada_2B=cantpasjmax - aux
						extra_parada_2B=paradas.pasj2subenB() - extra_parada_2B
						return "Proceso terminado"
						}
					ganancia=ganancia + paradas.pasj2subenB() * precio
					return "Combustible restante" + combustible + "Ganancia haste el momento" + ganancia + "Pasajeros en BONDI" + cant_pasj
					}
				if(paradaactual==1) {
					cant_pasj=cant_pasj - paradas.pasj1bajanB()
					if(cant_pasj<0) {
						cant_pasj=0
						return "Proceso terminado"
					}
					aux=cant_pasj
					cant_pasj=cant_pasj + paradas.pasj1subenB()
					if(cant_pasj>cantpasjmax) {
						cant_pasj=cantpasjmax
						extra_parada_1B=cantpasjmax - aux
						extra_parada_1B=paradas.pasj1subenB() - extra_parada_1B
						return "Proceso terminado"
						}
					ganancia=ganancia + paradas.pasj1subenB() * precio_ult_parada
					return "Combustible restante" + combustible + "Ganancia haste el momento" + ganancia + "Pasajeros en BONDI" + cant_pasj
					}
				if(paradaactual==0) {
					cant_pasj=0
					return "cantidad de pasajeros que quedaron sin subir en la ida en la parada 1" + extra_parada_1A + "cantidad de pasajeros que quedaron sin subir en la ida en la parada 2" + extra_parada_2A + "cantidad de pasajeros que quedaron sin subir en la ida en la parada 3" + extra_parada_3A + "cantidad de pasajeros que quedaron sin subir en la ida en la parada 4" + extra_parada_4A + "cantidad de pasajeros que quedaron sin subir en la vuelta en la parada 4" + extra_parada_4B +  "cantidad de pasajeros que quedaron sin subir en la vuelta en la parada 3" + extra_parada_3B +  "cantidad de pasajeros que quedaron sin subir en la vuelta en la parada 2" + extra_parada_2B +  "cantidad de pasajeros que quedaron sin subir en la vuelta en la parada 1" + extra_parada_1B
				}
			}
			
			}
		}
		
		
		
		
		
		
		
		
		
		
		
		
		method cargarcombs(litros){
			if(paradaactual==5) {
				aux=combustible
				combustible=combustible + litros
				if(combustible>capacidad_tanque){
				combustible=aux
					return "Te estas pasando de la capcidad de tanque por " + capacidad_tanque - combustible + "Transaccion cancelada"
				}
				else {
					aux=ganancia
					ganancia=ganancia - litros * precio_combustible
					if(ganancia>0){
						return "Transaccion realizada"
					}
					else {
						ganancia=aux
						return "Fondos insuficientes.Operacion cancelada"
					}
			}
			
			}
				else {
				return "No se puede cargar en esta parada"
			}
			}
			
			}





object paradas{
		var cantpasj=0
		 method pasj1subenA() {
			cantpasj=10
			return cantpasj
			}
		method pasj1bajanA() {
			cantpasj=15
			return cantpasj
			}
		 method pasj2subenA() {
			cantpasj=7
			return cantpasj
			}
		method pasj2bajanA() {
			cantpasj=3
			return cantpasj
			}
		 method pasj3subenA() {
			cantpasj=12
			return cantpasj
			}
		method pasj3bajanA() {
			cantpasj=10
			return cantpasj
			}
		 method pasj4subenA() {
			cantpasj=17
			return cantpasj
			}
		method pasj4bajanA() {
			cantpasj=14
			return cantpasj
			}
		 method pasj1subenB() {
			cantpasj=17
			return cantpasj
			}
		method pasj1bajanB() {
			cantpasj=6
			return cantpasj
			}
		 method pasj2subenB() {
			cantpasj=27
			return cantpasj
			}
		method pasj2bajanB() {
			cantpasj=19
			return cantpasj
			}
		 method pasj3subenB() {
			cantpasj=24
			return cantpasj
			}
		method pasj3bajanB() {
			cantpasj=6
			return cantpasj
			}
		 method pasj4subenB() {
			cantpasj=26
			return cantpasj
			}
		method pasj4bajanB() {
			cantpasj=16
			return cantpasj
			}
			
	}


