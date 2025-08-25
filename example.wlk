object pepita {
  var energy = 100
  var cena = 0

  method energy() = energy

  method volar(minutes) {
    energy = energy - (minutes * 3)
    cena = 0
  }
  method descanso(){
    energy = energy + 10  
  }
  method comer(comida){
     energy = energy + comida.energyQueAporta()
  }
  method energyDePepita(){
    return energy
  }
  method comiHoy(){
    cena = cena + 1
  }
}
object alpiste{ 
  method energyQueAporta(){
    return 20
    }
}

object manzana{
  var madurez = 1
  const energy = 5
  method energyQueAporta(){
    return energy * madurez
    }
  method madurar(){
    madurez = madurez + self.energyQueAporta() * 0.1
    }
}

object pepon{
  var energy = 30
  var cena = 0
  method energy() = 0
  method comer(alimento){
    energy = energy + alimento.energyQueAporta()
  }
  method volar(kilometros){
    energy = energy - (20 + kilometros * 2)
    cena = 0
  }
  method comiHoy(){
    cena = cena + 1
  }
}

object roque{
  var ave = pepita
  method alimentar(alimento){
    ave.comer(alimento)
    ave.comiHoy()
  }
  method entrenar(kilometros){
    ave.volar(kilometros)
    }
}