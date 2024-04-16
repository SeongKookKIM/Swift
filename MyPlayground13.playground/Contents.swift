
/*
 속성 래퍼(@propertyWrapper)는 속성에 적용되는 사용자 정의 로직을 캡슐화하여 코드의 재사용성과 가독성을 향상시키는 데 도움이 됩니다.
 */
@propertyWrapper
struct FixCase {
    private(set) var value: String = ""
    
    var wrappedValue: String {
        get { value }
        set { value = newValue.uppercased() }
    }
    
    init(wrappedValue initialValue: String) {
        self.wrappedValue = initialValue
    }
}

struct Contact {
    @FixCase var name: String
    @FixCase var city: String
    @FixCase var country: String
}

var contact = Contact(name: "John Smith", city: "London", country: "United Kingdom")
print("\(contact.name), \(contact.city), \(contact.country)")
      
      struct Address {
    private var cityName: String = ""
    
    var city: String {
        get { cityName }
        set { cityName = newValue.uppercased() }
    }
}
      
      var address = Address()
      address.city = "London"
      print(address.city)


/*
 Comparable은 프로토콜(protocol) 중 하나로, 비교 연산자를 지원하는 타입을 정의하기 위해 사용됩니다.
 */
@propertyWrapper
struct MinMaxVal<V: Comparable> {
    var value: V
    let min: V
    let max: V
    
    init(wrappedValue: V, min: V, max: V) {
        value = wrappedValue
        self.min = min
        self.max = max
    }
    
    var wrappedValue: V {
        get { return value }
        set {
            if newValue > max {
                value = max
            } else if newValue < min {
                value = min
            } else {
                value = newValue
            }
        }
    }
}

struct Demo {
    @MinMaxVal (min:10, max:150) var value: Int = 100
    @MinMaxVal (min:"Apple", max: "Orange") var value2: String = "Banana"
    @MinMaxVal (min: "2024-01", max: "2024-12") var value3: String = ""
}
var demo = Demo()

demo.value2 = "Pear"

print(demo.value2)

demo.value3 = "2025-01"
print(demo.value3)
