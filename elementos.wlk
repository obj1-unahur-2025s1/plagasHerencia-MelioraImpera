class Hogar {
    var mugre
    const confort
    method esBuena() = confort >= mugre / 2
    method efectoDelAtaque(unaPlaga) {mugre = mugre + unaPlaga.daño()} 
}
class Huerta {
    var produccion
    method esBuena() = produccion > nivelMinimo.valor()
    method efectoDelAtaque(unaPlaga) {
        if(unaPlaga.transmiteEnfermedades()) 
            produccion = produccion - 10 - (unaPlaga.daño() * 0.1)
        else
            produccion = produccion - (unaPlaga.daño() * 0.1)
    } 
}
object nivelMinimo {
    var property valor = 1000
}
class Mascota {
    var salud
    method esBuena() = salud > 250
    method efectoDelAtaque(unaPlaga) {
        if(unaPlaga.transmiteEnfermedades()) 
            salud = (salud - unaPlaga.daño()).max(0)
    } 
}
class Barrio {
    const elementos = []
    method agregarElementos(listaElementos) { elementos.addAll(listaElementos)}
    method esCopado() = elementos.count({b=>b.esBuena()}) > elementos.count({b=> not b.esBuena()})
}