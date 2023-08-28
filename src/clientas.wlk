object ludmila {
	method precioPorKm() {
		return 18
	}
}

object anaMaria {
	var estable = true
	
	method estable() {
		return estable
	}
	method cambiarEstabilidad() {
		if (self.estable()) {
			estable = false
		}
		else estable = true
	}
	method precioPorKm() {
		if (self.estable()) {
			return 30
		}
		else {
			return 25
		}
	}
}

object teresa {
	var precio = 22
	
	method precio() {
		return precio
	}
	method cambiarPrecio(nuevoPrecio) {
		precio = nuevoPrecio
	}
	method precioPorKm() {
		return precio
	}
}

object melina {
	var trabajaPara
	
	method trabajaPara() {
		return trabajaPara
	}
	method trabajaPara(cliente) {
		trabajaPara = cliente
	}
	method precioPorKm() {
		return trabajaPara.precioPorKm() - 3
	}
}