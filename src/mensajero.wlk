object roberto{
var property transporte = camion

var pesoPropio = 90

method peso(){
	return pesoPropio + transporte.peso()
}

method puedeLlamar() = false
	



}

object camion{
	var peso = 500
	var property acoplado = 1
	
	method peso(){
		return peso * acoplado
	}
}

object bicicleta{
	var peso = 8
	
	method peso(){
		return peso
	}
	
}

object chuckNorris{
	
	var peso = 900
	
	method peso(){
		return peso
	}
	
	method puedeLlamar() = true
	
}

object neo{
	
	var peso = 0
	var credito = false
	
		
	method peso(){
		return peso
	}
	
	method cargarCredito(){
		credito = true
	}
	
	method tieneCredito(){
		return credito
	}
	
	method puedeLlamar(){
		return self.tieneCredito()
				
	}
	
	
	
}
