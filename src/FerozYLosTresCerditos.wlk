object feroz {
	
	var peso = 10
	
	
	method estaSaludable() {
		return peso.between( 20 ,150 ) 
	}
	
	method subirPeso(unidades) {
		peso = peso + unidades
	}
	method bajarPeso(unidades) {
		peso = 0.max(peso - unidades)
	}
	
	method comer(personaje){
		self.subirPeso( (personaje.pesoTotal()* 0.10) )
	}
	
	method irCorriendo() {
		self.bajarPeso(1)
	}
	
	method sufrirCrisis(){
		peso = 10
	}
	
	method soplarCasade_Con_(casa,canCerditos){
		self.bajarPeso(  casa.resistenciaTotal() + (canCerditos *  cerdito.pesoTotal() )  )
	}
	
}

object cerdito {
	method pesoTotal() {
		return 3
	}
}

object casaDePaja {
	
	method resistenciaTotal(){
		return 0
	}
}

object casaDeMadera{
	method resistenciaTotal(){
		return 5
	}
}

object casaDeLadrillos{
	var resistenciaTotal = 0
	method cantidadDeLadrillos(cantidad) {
		resistenciaTotal = resistenciaTotal + (cantidad * 2 )
	}
	method resistenciaTotal() {
		return resistenciaTotal
	}
}


