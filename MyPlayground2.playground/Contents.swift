
protocol MessageBuilder {
    var name: String { get }
    func buildMessage() -> String
}

class MyClass:MessageBuilder {
    var name: String
    
    init(name: String) {
        self.name = name
    }
    
    // 마지막 표현식에 타입과 String이 일치하니까 return없이 자동으로 return 즉, 반환해준다.
    func buildMessage() -> String {
        // 표현식1
        // 표현식2
        // 표현식3
        // 표현식4
        // .... 마지막 표현식이 반환 타입과 일치할 경우 함수의 결과로 반환
        "Hello" + name
    }
}

print(MyClass(name: "SeongKook").buildMessage())

/*
 some 키워드는 Swift 5.1에서 도입된 "opaque result types(불투명 결과 타입)"의 일부입니다. 이것은 함수나 메서드의 반환 타입을 지정할 때, 해당 타입의 실제 유형을 숨기고, 대신에 프로토콜을 사용하여 반환 값을 설명하는 방법입니다.
 
 Equatable은 Swift에서 제공하는 프로토콜 중 하나로, 이 프로토콜을 준수하는 타입은 서로 동등함을 비교할 수 있습니다. 즉, == 연산자를 통해 비교가 가능한 타입입니다.
 */

func doubleFun1 (value: Int) -> some Equatable {
    return value * 2
}

func doubleFunc2 (value: String) -> some Equatable {
    value + value
}

let intOne = doubleFun1(value: 10)
print(intOne)
let stringOne = doubleFunc2(value: "Hello")
print(stringOne)


// 동작하지 않는다.
//if intOne == stringOne {
//    print("They match")
//}
