object galvan {
    var sueldoGalvan = 15000
    var estadoDeCuenta = 0
    
    // gasta dinero    

    method gastar(cantidadGastada) {
        estadoDeCuenta = estadoDeCuenta - cantidadGastada
        
    }

    //cobra el dinero y paga si es que tiene deuda

    method cobrarYPagar() {
        estadoDeCuenta =
        if(estadoDeCuenta < 0) sueldoGalvan - self.dinero()  else estadoDeCuenta + sueldoGalvan
    }

    //devuelve si es que tiene deuda

    method deuda() =  if(estadoDeCuenta<0) estadoDeCuenta  else  0

    //Devuelve el estado de cuenta de forma positiva

    method dinero() = if(estadoDeCuenta>0)estadoDeCuenta else estadoDeCuenta*-1

    //actualiza el sueldo de galvan

    method actualizarSueldo(_actualizarSueldo) {
        sueldoGalvan = _actualizarSueldo
    }

    //Devuelve el monto de sueldo que cobra Galvan

    method sueldo() {
        self.cobrarYPagar()
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