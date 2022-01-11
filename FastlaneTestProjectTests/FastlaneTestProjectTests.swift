//
//  FastlaneTestProjectTests.swift
//  FastlaneTestProjectTests
//
//  Created by Josip Glasovac on 10.01.2022..
//

import XCTest
@testable import FastlaneTestProject

class FastlaneTestProjectTests: XCTestCase {

    private var account: Account!

    // Setup is called before each and every single test
    // if 5 tests, setup will be exectured 5 times and init account again
    // this funtionc is called before each test
    override func setUp() {
        super.setUp()
        self.account = Account()
    }

    func test_insufficientFunds() {
        self.account.deposit(100)

        XCTAssertThrowsError(try self.account.withdraw(400)) { error in
            guard let error = error as? AccountError else {
                fatalError("Should not happen")
            }

            XCTAssertEqual(error, .insufficientFunds)
        }
    }

    func test_initailBalanceZero() {
        XCTAssertTrue(self.account.balance == 0, "Balance is not zero")
    }

    func test_DepositFunds() {
        self.account.deposit(100)

        XCTAssertEqual(100, self.account.balance)
    }

    func test_WithdrawFunds() {
        self.account.deposit(100)

        do {
            try self.account.withdraw(40)
            XCTAssertEqual(60, self.account.balance)
        } catch {
            fatalError("Should not happen")
        }

    }

    // this fuction is called after each test
    override func tearDown() {
        super.tearDown()
    }
}
