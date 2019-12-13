import Foundation

struct t_coeficienti{
  var a, b, c: Float
}

struct t_solutie{
  var re, im: Float
}

struct t_solutii{
  var x1, x2: t_solutie
}


func citeste()->t_coeficienti //struct
{
  print ("a=")   //s=string o=optional f=float &=inseamna ca se modifica nr in functie
  let s_o_a = readLine()
  if let s_a = s_o_a{
    let f_o_a = Float(s_a)
    if let f_a = f_o_a{
          print ("b=")
          let s_o_b = readLine()
          if let s_b = s_o_b{
            let f_o_b = Float(s_b)
            if let f_b = f_o_b{
                    print ("c=")
                    let s_o_c = readLine()
                    if let s_c = s_o_c{
                      let f_o_c = Float(s_c)
                      if let f_c = f_o_c{
                        return t_coeficienti(a: f_a, b: f_b, c: f_c)
                      }
                      else{
                        return t_coeficienti(a: 1, b: 2, c: 1)
                      }
                    }
                    else{
                      return t_coeficienti(a: 1, b: 2, c: 1)
          }
            }
            else{
              return t_coeficienti(a: 1, b: 2, c: 1)
            }
          }
          else{
            return t_coeficienti(a: 1, b: 2, c: 1)
  }
    }
    else{
      return t_coeficienti(a: 1, b: 2, c: 1)
    }
  }
  else{
    return t_coeficienti(a: 1, b: 2, c: 1)
  }
}

func calcul_radacini(_ coef: t_coeficienti)-> t_solutii
{
   let delta = coef.b * coef.b - 4 * coef.a * coef.c
  if delta >= 0{
    let x1 = t_solutie(re: (-coef.b - sqrt(delta)) / (2 * coef.a), im: 0)
    let x2 = t_solutie(re: (-coef.b + sqrt(delta)) / (2 * coef.a), im: 0)
    return t_solutii(x1: x1, x2: x2)
  }
  else{
    let x1 = t_solutie(re: -coef.b / (2 * coef.a), im: -sqrt(-delta) / (2 * coef.a))
    let x2 = t_solutie(re: -coef.b / (2 * coef.a), im: sqrt(-delta) / (2 * coef.a))
    
    return t_solutii(x1: x1, x2: x2)
  }
}

func tipateste(_ x: t_solutii)
{
  print("x1 = \(x.x1.re) + \(x.x1.im) i")
  print("x2 = \(x.x2.im) + \(x.x2.im) i")
}

var coef = citeste()

let x = calcul_radacini(coef)
tipateste(x)
