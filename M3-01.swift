import UIKit


func suma(_ sumando: Double, _ sumado: Double){
    print("\(sumando) + \(sumado) = \(sumando+sumado)")
}

func resta(_ minuendo: Double, _ sustraendo: Double){
    print("\(minuendo) - \(sustraendo) = \(minuendo-sustraendo)")
}

func multi(_ multiplicando: Double, _ multiplicador: Double){
    print("\(multiplicando) + \(multiplicador) = \(multiplicando*multiplicador)")
}

func div(_ Dividendo: Double, _ Divisor: Double){
    print("\(Dividendo) + \(Divisor) = \(Dividendo/Divisor)")
}

func operador() -> String {
    let leerOp: String? = readLine()
    var opc: String? = leerOp

    if(opc != "+" && opc != "-" && opc != "*" && opc != "/"){
        print("Esta opcion no esta disponible")
    }
  return opc ?? ""
}

func numero() -> Double{
  let leerNum: String? = readLine()
  var num: Double? = Double(leerNum ?? "0.0")
  
  if(leerNum?.count == 0 || (num?.isNaN) == nil){
        print("Not a Number")
  }
  return num ?? 0
}

print("Cual actividad hacer? (+,-,*,/)")
let opc: String = operador()
print("Digita el primer numero: ")
let num1: Double = numero()
print("Digita el segundo numero: ")
let num2: Double = numero()

switch opc {
    case = "+":
        suma(num1,num2)
    case = "-":
        resta(num1,num2)
    case = "*":
        multi(num1,num2)
    case = "/":
        div(num1,num2)
    default:
        print("No es una opcion valida")
}
