object luisa {
	var personajeActivo = mario
	
	method aparece(elemento){
		
		personajeActivo.encontrar(elemento)
	}
	
}

object floki {
	
	var arma = jabalina
	
	method encontrar(elemento) {
	    if (arma.estaCargada()) {
	        elemento.recibirAtaque(arma.potencia()) 
	        arma.registrarUso()
	    }
	}
}

object ballesta {
	 var cantFlechas= 10
	 var property potencia= 4
	 
	 method registrarUso(){
	 	 cantFlechas -= 1
	 }
	 method estaCargada() {
	 
	 return (cantFlechas >= 1)
	}
}

object jabalina {
	
	var property potencia= 30
	var naceCargada= true 
	
	method registrarUso(){
		naceCargada = false
	}
	method estaCargada(){
		
		return (naceCargada)
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
	method esFeliz() {
	 return valorRecolectado >= 50 or ultimoElemento.altura() >= 10 
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
		
		/*nivelDeDefensa += 20 - (nivelDeDefensa + 20 - 200  )*/
		nivelDeDefensa=(nivelDeDefensa +20).min(200)
		}
		else nivelDeDefensa += 20
	}
	
	method recibirAtaque(potencia) {
		
		nivelDeDefensa -= potencia
		
	}
}

object aurora {
	var property estaViva= true 
	
	method altura()= 1
	
	method recibirTrabajo() {}
	
	method valorQueOtorga() {
		
		return  15		
		
	}
	method recibirAtaque(potencia) {
		
		if (potencia >= 10) {
			
			estaViva= false
		}
		
		
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

