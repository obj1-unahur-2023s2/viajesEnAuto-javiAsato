import clientas.*

object roxana {
	method cobrar(cliente, km) {
		return cliente.precioPorKm() * km
	}
}

object gabriela {
	method cobrar(cliente, km) {
		return ((cliente.precioPorKm() * km) * 120) / 100
	}
}

object mariela {
	method cobrar(cliente, km) {
		return 50.max(cliente.precioPorKm() * km)
	}
}

object juana {
	method cobrar(cliente, km) {
		if (km <= 8) {
			return 100
		}
		else {
			return 200
		}
	}
}

object lucia {
	var reemplazaA
	
	method reemplazaA() {
		return reemplazaA
	}
	method reemplazaA(remisera) {
		reemplazaA = remisera
	}
	method cobrar(cliente, km) {
		return reemplazaA.cobrar(cliente, km)
	}
}