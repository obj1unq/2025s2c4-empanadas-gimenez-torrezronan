object galvan {
    var sueldoGalvan = 15000

    method actualizarSueldo(_actualizarSueldo) {
        sueldoGalvan = _actualizarSueldo
    }

    method sueldo() = sueldoGalvan
}


object baigorria {
    var empanadasVendidas = 0
    var sueldoBaigorria = 0
    
    method empanadasVendidas(_empanadasVendidas) {
        empanadasVendidas = empanadasVendidas + _empanadasVendidas 
    }

    method sueldo(){
        return sueldoBaigorria + empanadasVendidas * 15
    }

    method empanadas() = empanadasVendidas
}


object gimenez {
    var presupuesto = 300000

    method pagarSueldo(empleado) {
        presupuesto = presupuesto - empleado.sueldo()
    }

    method presupuestoDisponible() = presupuesto
}