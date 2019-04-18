/** First Wollok example */
object miketyson {
	var energia=100
	method golpear() {
		energia-=20
		if(energia<0){
			return "Sin energia. BOXEADOR GANA"
		}
		else{
		return energia
		}
	}
	method bloquear(){
		if(energia>=100){
			return "Energia al maximo"
		}
		else{
		energia+=10
		return energia
		}
	}
	method esquivar(){
		energia-=10
		if(energia<0){
			return "Sin energia. BOXEADOR GANA"
		}
		else{
		return energia
		}
	}
	method morderoreja(){
		energia-=50
		if(energia<0){
			return "Sin energia. BOXEADOR GANA (con trampa)"
		}
		else{
		return energia
		}
	}
}

object boxeador {
	var energia=100
	method golpear() {
		energia-=20
		if(energia<0){
			return "Sin energia. MIKE TYSON GANA"
		}
		else{
		return energia
		}
	}
	method bloquear(){
		if(energia==100){
			return "Energia al maximo"
		}
		else{
		energia+=10
		return energia
		}
	}
	method esquivar(){
		energia-=10
		if(energia<0){
			return "Sin energia. MIKE TYSON GANA"
		}
		else{
		return energia
		}
	}
}