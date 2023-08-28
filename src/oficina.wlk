object oficina {
	var remisera1
	var remisera2
	var aux
	
	method asignarRemiseras(nuevaRemisera1, nuevaRemisera2) {
		remisera1 = nuevaRemisera1
		remisera2 = nuevaRemisera2
	}
	method cambiarRemisera1Por(nuevaRemisera1) {
		remisera1 = nuevaRemisera1
	}
	method cambiarRemisera2Por(nuevaRemisera2) {
		remisera2 = nuevaRemisera2
	}
	method intercambiarRemiseras() {
		aux = remisera1
		remisera1 = remisera2
		remisera2 = aux
	}
	method remiseraElegidaParaElViaje(cliente, km) {
		if (remisera2.cobrar(cliente, km) < remisera1.cobrar(cliente, km) and (remisera1.cobrar(cliente, km) - remisera2.cobrar(cliente, km)) >= 30) {
			return remisera2
		}
		else {
			return remisera1
		}
	}
}
