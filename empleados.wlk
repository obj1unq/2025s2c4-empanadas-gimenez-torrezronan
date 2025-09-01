object galvan {
    var sueldoGalvan = 15000
    var dineroDisponible = 0
    var deudaActual = 0
    
    method gastar(cantidadGastada) {
        dineroDisponible = 
            if (self.dinero()>cantidadGastada) self.gastaSinAdeudar(cantidadGastada)
             
            else self.gastaYDebe(cantidadGastada)

    }

    method gastaYDebe(cuantoGasta) {
        var resto = 0
        resto = dineroDisponible - cuantoGasta
        deudaActual = deudaActual + (-1*resto)
        return 0
    }
    
    method gastaSinAdeudar(cantidad) {
        return dineroDisponible - cantidad
    }

    method dinero() = dineroDisponible

    method deuda() = deudaActual 

    method actualizarSueldo(_actualizarSueldo) {
        sueldoGalvan = _actualizarSueldo
    }

    method pagarDeuda() {
        dineroDisponible = 15000
        dineroDisponible = 
            if (self.dinero()>deudaActual) self.gastaSinAdeudar(deudaActual)
             
            else self.gastaYDebe(deudaActual)
    }

    method sueldo() {
        self.pagarDeuda()
        dineroDisponible = sueldoGalvan - dineroDisponible
        return sueldoGalvan
    }

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