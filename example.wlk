object poligono{
	var property a=0
	var property b=0
	var property c=0
	var mayor=0
	method esEquilatero(){
		if (self.verificacion_triangulo()){
			return ((a==b) and (a==c))
		}
		else {
			return false
		}
	}
	method esIsosceles(){
		if (self.verificacion_triangulo()){
			return ((a==b) and (a!==c)) or ((a!==b) and (a==c)) or ((b==c) and (b!==a))
		}
		else {
			return false
		}
	}
	method esEscaleno(){
		if (self.verificacion_triangulo()){
			return ((a!==b) and (a!==c) and (b!==c))
		}
		else {
			return false
		}
	}
	method verificacion_triangulo(){
		self.lado_mayor()
		if (a==mayor){
			return (a<b+c)
		}
		else {
			if (b==mayor){
				return (b<a+c)
			}
			else {
				return (c<a+b)
			}
		}
	}
	method lado_mayor(){
		mayor = (a.max(b)).max(c)
	}
}