import UIKit
/*:
# Playground - Actividad 7
* Valor por tipo y por referencia
* Funciones personalizadas Y Genericos
* Funciones de la biblioteca Swift para Arreglos
*/


/*: 
### Valor por tipo y por referencia
A) Para la colección "var costo_referencia:[Float] = [8.3,10.5,9.9]", aplicar el impuesto del 16% a través de recorrer la colección "costo_referencia" para aplicar el impuesto a cada cantidad, crear una función Impuesto que recibe como parámetro la colección y regrese aplicado el impuesto a cada cantidad.
*/
var costo_referencia:[Float] = [8.3,10.5,9.9]
func impuesto(Arreglo:[Float]) -> [Float]
{
    var indice:Int=0
    var resultado:[Float] = []
    for i in Arreglo
    {
        resultado[indice]=(Arreglo[indice]*0.16+Arreglo[indice])
        indice+=1
    }
    return resultado
}
//: B) Crear la función "sumaTres"  que reciba una función con dos valores a sumar y un segundo parametro para sumar el tercer número.
var Suma = {(x:Int,y:Int) -> Int in return x + y }

func sumaTres (x:Int , c:Int, v:Int) -> Int
{
    return Suma (x,c) + v
}


/*:
### Funciones personalizadas y Genéricos

 
 A) Generics: Crear la función genérica para intercambiar valores entre dos variables del mismo tipo.
*/
func Generica( valorA: Int, valorB: Int) -> (Int,Int) {
    let A = valorB
    let varTemporal = valorA
    let B = varTemporal
 
   return (A,B)
}


//: B) Función personalizada: Crear la función "Transformar" que reciba como parámetro una colección de tipo Int  "var datos = [3,7,9,2]" y una función que transforme cada valor de la coleción en una operación definida fuera de la función, regresando una colección transformada.

func Transformar(Arreglo:[Int],b:Int) -> [Int]
{
    var resultado:[Int] = []
    
    switch b {
    case 1:
        for i in Arreglo{
            resultado[i]=1*resultado[i]
        }
        break
    case 2:
    for i in Arreglo{
        resultado[i]=1+resultado[i]
    }
    break
        case 3:
        for i in Arreglo{
            resultado[i]-1*resultado[i]
        }
        break
    default:
        return resultado
    }
    return resultado
}

/*:
### Biblioteca de Swift
A) Aplicar la función de librería de Swift "map" para la colección var precios = [4.2, 5.3, 8.2, 4.5] y aplicar el impuesto de 16% y asignarla a la variable "impuesto"
*/

var precios = [4.2, 5.3, 8.2, 4.5]
var impuestos = precios.map{a in return a * 0.16}

//: B) Aplicar la función de la librería de Swift "filter" para la colección resultante "impuesto" del paso A, en donde se obtengas solo los precios mayores a 6.0 y asignarlos a la variable "precio_menor"

var precio_menor = impuesto(Arreglo:costo_referencia).filter{a in return a > 6}
