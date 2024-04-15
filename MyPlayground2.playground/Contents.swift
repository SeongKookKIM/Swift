
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
