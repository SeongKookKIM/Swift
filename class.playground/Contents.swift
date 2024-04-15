import UIKit

var greeting = "Hello, playground"


/*
class 클램스 이름: 부모 클래스 {
    // 프로퍼티
    // let var 정의
    // 인스턴스 메서드
    // 타임 메서드
}
*/

class BankAccount {
    // 프로퍼티
    var accountNumber: Int = 0
    var accountBalance: Float = 0
    let fees: Float = 25.00
    
    var balanceLessFees: Float {
        get {
            return self.accountBalance - fees
        }
        set (newBalance) {
            accountBalance = newBalance - fees
        }
    }
    
    // 상수에는 lazy 사용 불가- 해당 속성이 처음으로 호출될 때까지 초기화되지 않음을 나타냅니다.- ()는 {}를 변수 및 상수에 넣어준다.
    lazy var myProperty: String = {
        // 오래걸리는 작업
//       var result = resourceIntensiveTask()
//        result = processData(data: result)
//        return result
        return ""
    }()
    
    
    init() {
        accountNumber = 0
        accountBalance = 0
    }
    
    init(number: Int, balance: Float) {
        accountNumber = number
        accountBalance = balance
    }
    
    
    deinit {
        // 필요한 정리작업을 수행
        
    }
    
    // 인스턴스 메서드
    func displayBlance() -> Void {
        print("Number \(accountNumber)")
        print("Current balance is \(accountBalance)")
    }
    
    // 타입메서드 class,static -> class 타입 메서드는 상속 재정의 가능, static 타입 메서드는 상속 재정의 불가능
    static func getMaxBalance() -> Float {
        return 100000.00
    }
}

var bankAccount = BankAccount()

bankAccount.balanceLessFees = 12123.12

print("Balance: \(bankAccount.accountBalance)")
print("Num: \(bankAccount.accountNumber)")
bankAccount.displayBlance()

print(BankAccount.getMaxBalance())

// class 상속
class SavingAccount: BankAccount {
    var interestRate: Float = 0.0
    
    
    //@@@ override 로 초기화는 재정의가 불가능한지..?
    init(number: Int, balance: Float, rate: Float) {
        interestRate = rate
        super.init(number: number, balance: balance)
    }
    
    //BankAccount class를 상속 받았기 때문에 accountBalance 변수 사용가능
    func claculateInterest() -> Float {
        return interestRate * accountBalance
    }
    
    // 상속받은 인스턴스 메서드를 재정의
    override func displayBlance() {
        super.displayBlance()
        print("Prevailing intreset reate is \(interestRate)")
    }
    
}

print("-----------")
var saivingAccount = SavingAccount(number: 12311, balance: 600.00, rate: 0.07)

print(saivingAccount.claculateInterest())
saivingAccount.displayBlance()


//Extention
extension Double {
    var squared: Double {
        return self * self
    }
    
    var cubed: Double {
        return self * self * self
    }
}


let myValue: Double = 3.0
print(myValue.squared)
