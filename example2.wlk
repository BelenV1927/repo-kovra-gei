/** First Wollok example */
object miketyson {
	var energia=100
	var vida=100
	method golpear() {
		energia-=20
		if(energia<0){
			return "Sin energia.Se desmaya.Gana Contricante"
		}
		else{
		boxeador.recibirgolpe()
		return "Energia MT:" + energia
		}
	}
	method bloquear(){
		if(energia>=100){
			return "Energia MT al maximo"
		}
		else{
		energia+=10
		vida-=10
		return "Energia MT:" + energia + " Vida MT:" + vida
		}
	}
	method esquivar(){
		energia-=10
		vida+=10
		if(energia<=0){
			return "Sin energia.Se desmaya.Gana Contricante"
		}
		else{
		return "Energia MT:" + energia + "Vida MT:" + vida
		}
	}
	method morderoreja(){
		energia-=50
		if(energia<0){
			return "Sin energia.Se desmaya.Gana Contricante"
		}
		else{
		boxeador.mordido()
		return "Energia MT:" + energia
		}
	}
	method recibirgolpe(){
		vida-=20
		if(vida<=0){
			return "Sin vida.Gana Contrincante"
		}
		else{
			return "Vida MT:" + vida
		}
	}
}

object boxeador {
	var energia=100
	var vida=100
	method golpear() {
		energia-=20
		if(energia<0){
			return "Sin energia.Se desmaya.Gana Contricante"
		}
		else{
		miketyson.recibirgolpe()
		return "Energia:" + energia
		}
	}
	method bloquear(){
		if(energia>=100){
			return "Energia al maximo"
		}
		else{
		energia+=10
		vida-=10
		return "Energia:" + energia + " Vida:" + vida
		}
	}
	method esquivar(){
		energia-=10
		vida+=10
		if(energia<=0){
			return "Sin energia.Se desmaya.Gana Contricante"
		}
		else{
		return "Energia:" + energia + "Vida:" + vida
		}
	}
	method recibirgolpe(){
		vida-=20
		if(vida<=0){
			return "Sin vida.Gana Contrincante"
		}
		else{
			return "Vida:" + vida
		}
	}
	method mordido(){
		vida-=50
		if(vida<=0){
			return "Sin vida.Gana Mordisquitos"
		}
		else{
			return "Vida:" + vida
		}
	}
}