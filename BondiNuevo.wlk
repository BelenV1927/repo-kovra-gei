object combustible {
	var valor=0
	method actualizar_combs(consumo,cant_pasj){
		valor=consumo + (0.2 * cant_pasj)
		return valor
	}
}

object bondi {
	var consumo=10
	var nafta=500
	var capacidad_tanque=500
	var precio_combustible=2
	var ganancia=0
	var cantpasjmax=50
	var cant_pasj=0
	var direccion=1
	var parada_actual=0
	var extras_durante_recorrido=0
	var aux=0
	method sig_parada(){
		if(direccion==1){
		parada_actual=parada_actual+1
		}
		else{
			parada_actual=parada_actual-1
		}
		nafta= nafta - combustible.actualizar_combs(consumo,cant_pasj)
	}
	method bajar_pasj(){
		if(direccion==1){
			if(parada_actual==1){
				cant_pasj=cant_pasj-paradas.pasj1bajanA()
				}
				if(parada_actual==2){
					cant_pasj=cant_pasj-paradas.pasj2bajanA()
				}
				if(parada_actual==3){
					cant_pasj=cant_pasj-paradas.pasj3bajanA()
				}
				if(parada_actual==4){
					cant_pasj=cant_pasj-paradas.pasj4bajanA()
				}
				if(parada_actual==5){
					cant_pasj=0
					direccion=0
				}
		}
		else{
				if(parada_actual==4){
				cant_pasj=cant_pasj-paradas.pasj4bajanB()
				}
				if(parada_actual==3){
					cant_pasj=cant_pasj-paradas.pasj3bajanB()
				}
				if(parada_actual==2){
					cant_pasj=cant_pasj-paradas.pasj2bajanB()
				}
				if(parada_actual==1){
					cant_pasj=cant_pasj-paradas.pasj1bajanB()
				}
				if(parada_actual==0){
					cant_pasj=0
					direccion=1
				}
			}
			if(cant_pasj<0){
				cant_pasj=0
				return "Cantidad de pasajeros : " + cant_pasj
			}
			else {
				return "Cantidad de pasajeros : " + cant_pasj
			}
			
	}
	method subir_pasj(){
		if(direccion==1){
			if(parada_actual==1){
				cant_pasj=cant_pasj+paradas.pasj1subenA()
				ganancia=ganancia + capital.ganancia_x_parada(cant_pasj)
				}
				if(parada_actual==2){
					cant_pasj=cant_pasj+paradas.pasj2subenA()
					ganancia=ganancia + capital.ganancia_x_parada(cant_pasj)
				}
				if(parada_actual==3){
					cant_pasj=cant_pasj+paradas.pasj3subenA()
					ganancia=ganancia + capital.ganancia_x_parada(cant_pasj)
				}
				if(parada_actual==4){
					cant_pasj=cant_pasj+paradas.pasj4subenA()
					ganancia=ganancia + capital.ganancia_ult_parada(cant_pasj)
				}
				if(parada_actual==5){
					cant_pasj=0
					direccion=0
				}
		}
		else{
				if(parada_actual==4){
				cant_pasj=cant_pasj+paradas.pasj4subenB()
				ganancia=ganancia + capital.ganancia_x_parada(cant_pasj)
				}
				if(parada_actual==3){
					cant_pasj=cant_pasj+paradas.pasj3subenB()
					ganancia=ganancia + capital.ganancia_x_parada(cant_pasj)
				}
				if(parada_actual==2){
					cant_pasj=cant_pasj+paradas.pasj2subenB()
					ganancia=ganancia + capital.ganancia_x_parada(cant_pasj)
				}
				if(parada_actual==1){
					cant_pasj=cant_pasj+paradas.pasj1subenB()
					ganancia=ganancia + capital.ganancia_ult_parada(cant_pasj)
				}
				if(parada_actual==0){
					cant_pasj=0
					direccion=1
				}
			}
				if(cant_pasj>cantpasjmax){
		aux=cant_pasj	
		cant_pasj=cantpasjmax
		extras_durante_recorrido= (extras_durante_recorrido + (cantpasjmax - aux)) * -1
		}
		return "Cantidad de pasajeros : " + cant_pasj
	}
	method cargarcombs(litros){
		if(parada_actual==5) {
			aux=combustible
			combustible=combustible + litros
			if(combustible>capacidad_tanque){
				combustible=aux
				return "Te estas pasando de la capcidad de tanque por " + capacidad_tanque - combustible + " Transaccion cancelada"
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
	method info(){
		return "Cantidad de pasajeros : " + cant_pasj + " Pasajeros extras durante el recorrido : " + extras_durante_recorrido + " Cantidad de combustible : " + nafta + " Parada actual : " + parada_actual + " Ganancia hasta el momento : " + ganancia
	}
}


object paradas{
		var cantpasj=0
		 method pasj1subenA() {
			cantpasj=15
			return cantpasj
			}
		method pasj1bajanA() {
			cantpasj=10
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

object capital{
	var precio=20
	var aux=0
	method ganancia_x_parada(cant_pasj){
		aux=cant_pasj * precio
		return aux
	}
	method ganancia_ult_parada(cant_pasj){
		aux=cant_pasj * (precio / 4)
		return aux
	}
}

