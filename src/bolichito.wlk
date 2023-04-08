import objetos.*

object bolichito {
	var objetoEnMostrador
	var objetoEnVidriera
	
	method ponerEnMostrador(objeto) { objetoEnMostrador = objeto }
	method ponerEnVidriera(objeto) { objetoEnVidriera = objeto }
	
	method esBrillante() { 
		const elDeMostradorBrilla = true
		const elDeVidrieraBrilla = true 
		return elDeMostradorBrilla and elDeVidrieraBrilla
	}
	
	method esMonocromatico() {
		return objetoEnMostrador.color() == objetoEnVidriera.color()
	}
	
	method estaDesequilibrado() {
		return objetoEnMostrador.peso()>objetoEnVidriera.peso()
	}
	
	method tieneAlgoDeColor(color) {
		return objetoEnMostrador.color() == color || objetoEnVidriera.color() == color
	}
  
  method puedeMejorar(){
    return not self.esMonocromatico()|| not self.estaDesequilibrado()
  }

	method puedeOfrecerleAlgoA(persona) {
		return persona.leGusta(objetoEnMostrador) || persona.leGusta(objetoEnVidriera)
	}
}