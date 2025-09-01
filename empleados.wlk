object galvan {
    var sueldoGalvan = 15000
    var dineroDisponible = 0
    var deudaActual = 0
    
    method gastar(cantidadGastada) {
        dineroDisponible -= cantidadGastada
    }

    method dinero() = dineroDisponible 

    method actualizarSueldo(_actualizarSueldo) {
        sueldoGalvan = _actualizarSueldo
    }

    method sueldo() = sueldoGalvan
}

object baigorria {
    var empanadasVendidas = 0
    var sueldoBaigorria = 0
    var SueldoAcumulado = 0
    const precioPorEmpanada = 15
    
    method empanadasVendidas(_empanadasVendidas) {
        empanadasVendidas = empanadasVendidas + _empanadasVendidas
         
    }

    method sueldoActual() {
        sueldoBaigorria = sueldoBaigorria + empanadasVendidas * precioPorEmpanada   
    }

    method sueldo(){
        SueldoAcumulado = SueldoAcumulado + empanadasVendidas * precioPorEmpanada
        self.sueldoActual()
        empanadasVendidas = 0
        return sueldoBaigorria  
        
    }
    
    method totalCobrado() = SueldoAcumulado
}


object gimenez {
    var presupuesto = 300000

    method pagarSueldo(empleado) {
        presupuesto = presupuesto - empleado.sueldo()
    }

    method presupuestoDisponible() = presupuesto
}