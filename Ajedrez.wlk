object control {
	method inicializar_juego_completo() {
		peonb1.id(1)
		peonb1.en_juego(1)
		peonb1.x(1)
		peonb1.y(2)
		peonb2.id(2)
		peonb2.en_juego(1)
		peonb2.x(2)
		peonb2.y(2)
		peonb3.id(3)
		peonb3.en_juego(1)
		peonb3.x(3)
		peonb3.y(2)
		peonb4.id(4)
		peonb4.en_juego(1)
		peonb4.x(4)
		peonb4.y(2)
		peonb5.id(5)
		peonb5.en_juego(1)
		peonb5.x(5)
		peonb5.y(2)
		peonb6.id(6)
		peonb6.en_juego(1)
		peonb6.x(6)
		peonb6.y(2)
		peonb7.id(7)
		peonb7.en_juego(1)
		peonb7.x(7)
		peonb7.y(2)
		peonb8.id(8)
		peonb8.en_juego(1)
		peonb8.x(8)
		peonb8.y(2)
		peonn1.id(9)
		peonn1.en_juego(1)
		peonn1.x(1)
		peonn1.y(7)
		peonn2.id(10)
		peonn2.en_juego(1)
		peonn2.x(2)
		peonn2.y(7)
		peonn3.id(11)
		peonn3.en_juego(1)
		peonn3.x(3)
		peonn3.y(7)
		peonn4.id(12)
		peonn4.en_juego(1)
		peonn4.x(4)
		peonn4.y(7)
		peonn5.id(13)
		peonn5.en_juego(1)
		peonn5.x(5)
		peonn5.y(7)
		peonn6.id(14)
		peonn6.en_juego(1)
		peonn6.x(6)
		peonn6.y(7)
		peonn7.id(15)
		peonn7.en_juego(1)
		peonn7.x(7)
		peonn7.y(7)
		peonn8.id(16)
		peonn8.en_juego(1)
		peonn8.x(8)
		peonn8.y(7)
		torresb1.id(17)
		torresb1.en_juego(1)
		torresb1.x(1)
		torresb1.y(1)
		torresb2.id(18)
		torresb2.en_juego(1)
		torresb2.x(8)
		torresb2.y(1)
		torresn1.id(19)
		torresn1.en_juego(1)
		torresn1.x(1)
		torresn1.y(8)
		torresn2.id(20)
		torresn2.en_juego(1)
		torresn2.x(8)
		torresn2.y(8)
		alfilesb1.id(21)
		alfilesb1.en_juego(1)
		alfilesb1.x(3)
		alfilesb2.y(1)
		alfilesb2.id(22)
		alfilesb2.en_juego(1)
		alfilesb2.x(6)
		alfilesb2.y(1)
		alfilesn1.id(23)
		alfilesn1.en_juego(1)
		alfilesn1.x(3)
		alfilesn1.y(8)
		alfilesn2.id(24)
		alfilesn2.en_juego(1)
		alfilesn2.x(6)
		alfilesn2.y(8)
		caballosb1.id(25)
		caballosb1.en_juego(1)
		caballosb1.x(2)
		caballosb1.y(1)
		caballosb2.id(26)
		caballosb2.en_juego(1)
		caballosb2.x(7)
		caballosb2.x(1)
		caballosn1.id(27)
		caballosn1.en_juego(1)
		caballosn1.x(2)
		caballosn1.y(8)
		caballosn2.id(28)
		caballosn2.en_juego(1)
		caballosn2.x(7)
		caballosn2.y(8)
		reinasb.id(29)
		reinasb.en_juego(1)
		reinasb.x(4)
		reinasb.y(1)
		reinasn.id(30)
		reinasn.en_juego(1)
		reinasn.x(4)
		reinasn.y(8)
		reyb.id(31)
		reyb.en_juego(1)
		reyb.x(5)
		reyb.y(1)
		reyn.id(32)
		reyn.en_juego(1)
		reyn.x(5)
		reyn.y(8)
	}
	
}







class Peones {
	var property id
	var property en_juego
	var property x
	var property y
	var valor_material =1 
	method mover (a,c) {
		if (tablero.confirmacion_dentro_del_tablero(a,c) and tablero.confirmacion_movimiento_peon(x,a,y,c) ) {
			x=a
			y=c
			tablero.ventaja_material()
		}
	}
	method agregar_a_coleccion_blanca() {
		peonesb.add()
	}
	method agregar_a_coleccion_negra() {
		peonesn.add()
	}
}

class Torres {
	var property id
	var property en_juego
	var property x
	var property y
	var valor_material =5
	method mover (a,c) {
		if (tablero.confirmacion_dentro_del_tablero(a,c) and tablero.confirmacion_movimiento_torre(x,a,y,c) ) {
			x=a
			y=c
			tablero.ventaja_material()
		}
	}
	method agregar_a_coleccion_blanca() {
		torresb.add()
	}
	method agregar_a_coleccion_negra() {
		torresn.add()
	}
}

class Alfiles {
	var property id
	var property en_juego
	var property x
	var property y
	var valor_material =3 
	method agregar_a_coleccion_blanca() {
		alfilesb.add()
	}
	method agregar_a_coleccion_negra() {
		alfilesn.add()
	}
}

class Caballos {
	var property id
	var property en_juego
	var property x
	var property y
	var valor_material =3 
	method mover (a,c) {
		if (tablero.confirmacion_dentro_del_tablero(a,c) and tablero.confirmacion_movimiento_caballo(x,a,y,c) ) {
			x=a
			y=c
			tablero.ventaja_material()
		}
	}
	method agregar_a_coleccion_blanca() {
		caballosb.add()
	}
	method agregar_a_coleccion_negra() {
		caballosn.add()
	}
}

class Reina {
	var property id
	var property en_juego
	var property x
	var property y
	var valor_material =9 
	method mover (a,c) {
		if (tablero.confirmacion_dentro_del_tablero(a,c) and tablero.confirmacion_movimiento_reina(x,a,y,c) ) {
			x=a
			y=c
			tablero.ventaja_material()
		}
	
	}
	method agregar_a_coleccion_blanca() {
		reinab.add()
	}
	method agregar_a_coleccion_negra() {
		reinan.add()
	}
}

class Rey {
	var property id
	var property en_juego
	var property x
	var property y
	method mover (a,c) {
		if (tablero.confirmacion_dentro_del_tablero(a,c) and tablero.confirmacion_movimiento_rey(x,a,y,c) ) {
			x=a
			y=c
			tablero.ventaja_material()
		}
	}
	method agregar_a_coleccion_blanca() {
		reyesb.add()
	}
	method agregar_a_coleccion_negra() {
		reyesn.add()
	}
}

const peonb1 = new Peones()
const peonb2 = new Peones()
const peonb3 = new Peones()
const peonb4 = new Peones()
const peonb5 = new Peones()
const peonb6 = new Peones()
const peonb7 = new Peones()
const peonb8 = new Peones()

const peonn1 = new Peones()
const peonn2 = new Peones()
const peonn3 = new Peones()
const peonn4 = new Peones()
const peonn5 = new Peones()
const peonn6 = new Peones()
const peonn7 = new Peones()
const peonn8 = new Peones()


const torresb1 = new Torres()
const torresb2 = new Torres()

const torresn1 = new Torres()
const torresn2 = new Torres()


const alfilesb1 = new Alfiles()
const alfilesb2 = new Alfiles()

const alfilesn1 = new Alfiles()
const alfilesn2 = new Alfiles()


const caballosb1 = new Caballos()
const caballosb2 = new Caballos()


const caballosn1 = new Caballos()
const caballosn2 = new Caballos()


const reinasb = new Reina()
const reinasn = new Reina()

const reyb = new Rey() 
const reyn = new Rey()

const peonesb=#{}
const reyesb=#{}
const reinab=#{}
const alfilesb=#{}
const torresb=#{}
const caballosb=#{}
const peonesn=#{}
const reyesn=#{}
const reinan=#{}
const alfilesn=#{}
const torresn=#{}
const caballosn=#{}

object tablero {
	var aux
	var aux2
	method confirmacion_dentro_del_tablero(x,y) {
		return x>0 and x<=8 and y>0 and y<=8
	}
	method confirmacion_movimiento_rey(x,a,y,b) {
		return ((x-a==1) and (y-b==1)) or ((a-x==1) and (y-b==1)) or ((x-a==1) and (b-y==1)) or ((a-x==1) and (b-y==1))
	}
	method confirmacion_movimiento_peon(x,a,y,b){
		return ((a-x==1) and (y==b)) or ((x-a==1) and (y==b))
	}
	method confirmacion_movimiento_caballo(x,a,y,b) {
		return ((x-a==2) and (y-b==1)) or ((x-a==2) and (b-y==1)) or ((a-x==2) and (y-b==1)) or ((a-x==2) and (b-y==1)) or ((x-a==1) and (y-b==2)) or ((x-a==1) and (b-y==2)) or ((a-x==1) and (y-b==2)) or ((a-x==1) and (b-y==2))
	}
	method confirmacion_movimiento_torre(x,a,y,b){
		return ((x==x) and (y!=y)) or ((x!=x) and (y==y))
	}
	method confirmacion_movimiento_alfil(x,a,y,b){
		return ((x-a==8)) and  (y-b==8) or (a-x==8) and (b-y==8)
		
	}
	method confirmacion_movimiento_reina(x,a,y,b){
		return ((x==x)) and (y!=y) or ((x!=x) and (y==y))  and ((x-a==x)) and  (y-b==x) or (a-x==x) and (b-y==x)
		
	}
	method ventaja_material () {
		aux=peonesb.sum() + reinasb.sum()*9 + reyesb.sum()*100 + torresb.sum()*5 + alfilesb.sum()*3 + caballosb.sum()*3
		aux2=peonesn.sum() + reinasn.sum()*9 + reyesn.sum()*100 + torresn.sum()*5 + alfilesn.sum()*3 + caballosn.sum()*3
		return "El valor material de los blancos es " + aux + "El valor material de los negros es " + aux2
	}
	
	method verificacion_cantidad_de_piezas(){
	return peonesb<=8 and peonesn<=8 and alfilesb<=2 and alfilesn<=2 and torresb<=2 and torresn<=2 and caballosb<=2 and caballosn<=2 and reyesb==1 and reyesn==1 and reinab<=1 and reinan<=1
		}
	}


