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
    var accountBalance: Float = 0
    var accountNumber: Int = 0
    
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
print("\(bankAccount.accountBalance)")
print("\(bankAccount.accountNumber)")
bankAccount.displayBlance()

print(BankAccount.getMaxBalance())
