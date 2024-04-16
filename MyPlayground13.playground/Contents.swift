
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
