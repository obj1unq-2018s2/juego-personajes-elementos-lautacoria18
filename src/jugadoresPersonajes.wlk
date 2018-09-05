object luisa {
	var personajeActivo = noHayPersonaje
}


object floki {
	var arma
	
	method encontrar(elemento) {
	    if (arma.estaCargada()) {
	        elemento.recibirAtaque(arma.potencia()) 
	        arma.registrarUso()
	    }
	}
}


object mario {
	var valorRecolectado = 0
	var property ultimoElemento= null
	method encontrar(elemento) {
	    valorRecolectado += elemento.valorQueOtorga()
	    elemento.recibirTrabajo()
	    // ... acá hay que agregar una línea ...
	   ultimoElemento= elemento
	}  
	
}


object noHayPersonaje {
	// no hace falta ponerle ningún método, es solamente para marcarle a Luisa que no tiene ningún personaje activo
}

object castillo {
	
	var property nivelDeDefensa = 150
	
	method altura()= 20
	method valorQueOtorga() {
		return nivelDeDefensa /  5
	}
	method recibirTrabajo()	{
		
		if (nivelDeDefensa + 20 >= 200){
		
		nivelDeDefensa += 20 - (nivelDeDefensa + 20 - 200  )
		}
		else nivelDeDefensa += 20
	}
}

object aurora {
	var property estaViva= true 
	
	method altura()= 1
	
	method recibirTrabajo() {}
	
	method valorQueOtorga() {
		
		return  15		
		
	}
}

object tipa {
		
			var altura = 8
			
			method valorQueOtorga() {
							
			return altura * 2
			
		
			}
			
			method recibirTrabajo(){
				
				altura += 1
			}
			
			method alturaActual() = altura 
			
			}

