
import Foundation

enum AccountError: Error {
    case insufficientFunds
}

struct Account {
    var balance: Double = 0.0

    mutating func deposit(_ amount: Double) {
        balance += amount
    }

    mutating func withdraw(_ amount: Double) throws {
        let netBalance = balance - amount

        if netBalance > 0 {
            balance -= amount
        } else {
            throw AccountError.insufficientFunds
        }
    }
}
