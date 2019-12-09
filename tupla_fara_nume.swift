import Foundation

func citeste()->(Float, Float, Float)
{
  print("a = ")
  let s_o_a = readLine() // string optional
  if let s_a = s_o_a {
    let f_o_a = Float(s_a)
    if let f_a = f_o_a {
        print("b = ")
        let s_o_b = readLine() // string optional
        if let s_b = s_o_b {
          let f_o_b = Float(s_b)
          if let f_b = f_o_b {
              print("c = ")
              let s_o_c = readLine() // string optional
              if let s_c = s_o_c {
                  let f_o_c = Float(s_c)
                  if let f_c = f_o_c {
                    return (f_a, f_b, f_c)
                }
                else {
                //print("nu s-a putut converti c !")
                return(1, 2, 1)
                }
              }
                else {
                //print("Nu am citit nimic in c !")
                  return(1, 2, 1)
                }
          }
          else {
           // print("nu s-a putut converti b !")
           return(1, 2, 1)
          }
        }
        else {
        //print("Nu am citit nimic in b !")
        return(1, 2, 1)
        }
    }
    else {
      //print("nu s-a putut converti a !")
      return(1, 2, 1)
    }
  }
  else {
   //print("Nu am citit nimic in a !")
   return(1, 2, 1)
  }
}

func calculeaza(_ coef: (Float, Float, Float), _ x1: inout (Float, Float), _ x2: inout (Float, Float))
{
  let delta = coef.1 * coef.1 - 4 * coef.0 * coef.2
  if delta >= 0{
    x1.0 = (-coef.1 - sqrt(delta)) / (2 * coef.0)
    x2.0 = (-coef.1 + sqrt(delta)) / (2 * coef.0)
    x1.1 = 0
    x2.1 = 0
  }
  else{
    x1.0 = -coef.1 / (2 * coef.0)
    x2.0 = -coef.1 / (2 * coef.0)
    x1.1 = -sqrt(-delta) / (2 * coef.0)
    x2.1 = sqrt(-delta) / (2 * coef.0)
  }
}  

func tipareste(_ x1:(re:Float, im:Float), _ x2:(re:Float, im:Float) )
{
  print ("x1= \(x1.re) + \(x1.im)i")
  print ("x2= \(x2.re) + \(x2.im)i")
}


var x1, x2:(Float, Float)
x1.0 = 0
x1.1 = 0
x2.0 = 0
x2.1 = 0

var coef = citeste()
calculeaza(coef, &x1, &x2)
tipareste(x1, x2)
