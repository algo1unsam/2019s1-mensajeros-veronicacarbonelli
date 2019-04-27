import destinos.*
object paquete {
	
	
	var property destino = puenteDeBroklin
	var estaPago = false
	
	method pagar(){
		estaPago = true
	}
	
	method estaPago(){
		return estaPago
	}
	
	method puedeSerEntregado(mensajero){
		return destino.dejaPasar(mensajero) && self.estaPago()
	}
	
}

