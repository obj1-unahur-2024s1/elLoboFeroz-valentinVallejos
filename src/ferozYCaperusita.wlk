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
	
}

object caperusita {	
 	var pesoTotal = 60 + canasta.pesoTotal()
 	
	method pesoTotal() {
		return pesoTotal
	} 	
	method perderManzanas(cantidad){
		pesoTotal = 0.max ( pesoTotal - ( cantidad * manzana.pesoTotal() ))
	}
}

object canasta{

	method pesoTotal() {
		return 6 * manzana.pesoTotal()
	} 
}

object manzana{
	
	method pesoTotal(){
		return 0.2
	}
}

object abuelita{
	
	method pesoTotal() {
		return 50
	}
}

object cazador{
	var pesoTotal = 80 
	
	method trajoEscopeta(){
	pesoTotal = pesoTotal + 4 	
	}
	
	method pesoTotal() {
		return pesoTotal
	} 
}
