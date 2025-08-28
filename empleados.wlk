object galvan {
    var sueldoGalvan = 15000

    method actualizarSueldo(_actualizarSueldo) {
        sueldoGalvan = _actualizarSueldo
    }

    method sueldo() = sueldoGalvan
}


object baigorria {
    var sueldoBaigorria = 0
    var empanadasVendidas = 0

    method empanadasVendidas(_empanadasVendidas) {
        empanadasVendidas = empanadasVendidas + _empanadasVendidas * 15
    }

    method sueldo() = sueldoBaigorria
}


object gimenez {
    var presupuesto = 300000

    method pagarSueldo(empleado) {
        presupuesto = presupuesto - empleado.sueldo()
    }
}