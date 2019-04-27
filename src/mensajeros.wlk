import mensajero.*
import paquete.*
import mensajero.*
import destinos.*

object mensajeria {
	var mensajeros =[]
	
	method mensajeros() = mensajeros
	
	method contratar(mensajero) {
		mensajeros.add(mensajero)

 	}
 	
 	method despedir(mensajero){
 		return mensajeros.remove(mensajero)
 	}
 	
 	method despedirTodos(){
 		mensajeros.removeAll(mensajeros)
 	}
 	
 	method esGrande(){
 		return mensajeros.size()>=2
 	}
 	
 	method puedeSerEntreg(){
 		return paquete.estaPago() && paquete.destino().dejaPasar(mensajeros.first())
 		
 	}
 	
 	method pesoUltimoMensajero(){
 		return mensajeros.last().peso()
 	}
 	
 	//tercera parte
 	
 	method puedeSerEntregadoPorAlgun(){
 		return mensajeros.any({mensajero =>paquete.puedeSerEntregado(mensajero)})
 		}
 	
 	method esFacil(){
 		return mensajeros.all({mensajero => paquete.puedeSerEntregado(mensajero)})
 	}	
 		
 		
}
