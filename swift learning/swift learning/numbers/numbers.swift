import Foundation

func numberTypes() {
    let items = 5
    let account = 12312412312311
//    let bigInt = 123812738012370918237120937123912312312
    let price = 5.10
    let pi = 3.1419
    
    print(type(of: items))
}

func randomNumber() {
    let a1 = Int.random(in: 1...1000)
    print(a1)
    print(type(of: a1))
    
    let a2 = Int.random(in: 0...1)
    print(a2)
    print(type(of: a2))
    
    let a3 = Double.random(in: 1.1...1.9)
    print(a3)
    print(type(of: a3))
    
    let a4 = 3
    let floatA4 = Float(a4)
    print(floatA4)
    print(type(of: floatA4))
    
    let name = "Dheeraj"
    print(type(of: name))
    let demoName = "Jhon"
    print(type(of: demoName))
    
    let cats = 3
    let pi = 3.14159
    print(type(of: String(cats)))
    print(type(of: String(pi)))
    
    let steps = "1000"
    print(type(of: Int(steps)))
    print(type(of: Double(steps)))
}
