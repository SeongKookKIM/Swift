
struct SampleStruct {
    var name: String
    
    init(name: String) {
        self.name = name
    }
    
    func buildHelloMsg() {
        "Hello" + name
    }
}

class SampleClass {
    var name: String
    init(name: String) {
        self.name = name
    }
    
    func buildHelloMsg() {
        "Hello" + name
    }
}


/*
 Struct는 메모리 효율성에서는 좋으나 확장 및 수정,등 부분에서는 불적합함
 반면, Class 는 확장 및 수정에 적합함.
 */

let myStruct1 = SampleStruct(name: "Mark")
var myStruct2 = myStruct1
myStruct2.name = "David"

print(myStruct1.name, myStruct2.name)

let myClass1 = SampleClass(name: "Mark")
var myClass2 = myClass1
myClass2.name = "David"

print(myClass1.name, myClass2.name)


enum Temperature {
    case hot
    case warm
    case cold(centigrade: Int)
}

func displayTempInfo (temp:Temperature) {
    switch temp {
    case .hot:
        print("It's hot")
    case .warm:
        print("It's warm")
    case .cold(let centigrade) where centigrade <= 0:
        print("Ice warning: \(centigrade) defress.")
    case .cold:
        print("It's cold")
    }
}

displayTempInfo(temp: .hot)
displayTempInfo(temp: .cold(centigrade: -10))

