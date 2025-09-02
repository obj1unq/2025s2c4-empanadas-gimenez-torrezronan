object galvan {
    var sueldoGalvan = 15000
    var dineroDisponible = 0
    
    // Gasta la cantidad de dinero determinada  

    method gastar(_gastar) {
        dineroDisponible = dineroDisponible - _gastar   
    }

    // Cobra el dinero y si tiene deuda la paga completa si es que le alcanza, si no tiene solo suma a la cuenta

    method cobrarYPagar() {
        dineroDisponible= dineroDisponible + sueldoGalvan   
    }

    // Devuelve si es que tiene deuda solo numero positivo y si no muestra que la deuda es 0

    method deuda() =  if(dineroDisponible<0) dineroDisponible*-1  else  0

    // Devuelve el dinero disponible para gastar, si tiene deuda muestra 0 si tiene dinero disponible muestra cuanto

    method dinero() = if(dineroDisponible<0) 0  else dineroDisponible

    // Actualiza el sueldo de galvan segun el nuevo sueldo que le demos

    method actualizarSueldo(_actualizarSueldo) {
        sueldoGalvan = _actualizarSueldo
    }

    // Devuelve el monto de sueldo que cobra Galvan (solo para consultar el sueldo)

    method sueldo() = sueldoGalvan 

    // Devuelve el monto de sueldo que cobra Galvan y lo suma a su dinero disponible y paga las deudas si es que tiene

    method sueldoFinal() {
        self.cobrarYPagar()
        return sueldoGalvan
    }

}

object baigorria {

    var empanadasVendidas = 0
    var sueldoBaigorria = 0
    var sueldoAcumulado = 0
    const precioPorEmpanada = 15
    

    // vende empanadas y suma las empanadas que vendio a la cantidad de empanadas que ya vendio baigorria

    method empanadasVendidas(_empanadasVendidas) {
        empanadasVendidas = empanadasVendidas + _empanadasVendidas     
    }

    // Calcula el sueldo de baigorria segun la cantidad de empanadas vendidas y lo modifica

    method sueldoActual() {
         
        sueldoBaigorria = empanadasVendidas * precioPorEmpanada   
    }

    // Devuelve la cantidad de dinero que cobra baigorria primero calcula cuanto es (Solo consulta)

    method sueldo() {
        self.sueldoActual() // se podria evitar poniendo directamente empanadas por precio en return
        return sueldoBaigorria
    }

    // Devuelve el sueldo que debe cobrar pero antes lo calcula y  suma a un contador el sueldo que va a cobrar, reinicia las ventas de baigorria (Consulta y modica)

    method sueldoFinal(){
        self.sueldoActual()
        sueldoAcumulado = sueldoAcumulado + self.sueldo()
        empanadasVendidas = 0
        return sueldoBaigorria      
    }
    
    //Devuelve el total cobrado

    method totalCobrado() = sueldoAcumulado
}


object gimenez {
    var presupuesto = 300000

    method pagarSueldo(empleado) {
        presupuesto = presupuesto - empleado.sueldoFinal()
    }

    method presupuestoDisponible() = presupuesto
}