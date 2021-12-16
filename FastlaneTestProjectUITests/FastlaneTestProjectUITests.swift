//
//  FastlaneTestProjectUITests.swift
//  FastlaneTestProjectUITests
//
//  Created by Josip Glasovac on 16.12.2021..
//

import XCTest

class FastlaneTestProjectUITests: XCTestCase {

    override func setUp() {
        let app = XCUIApplication()
        setupSnapshot(app)
        app.launch()
    }

    func test_screenshot_ui() {
        let app = XCUIApplication()

        let helloWorldStaticText = app.staticTexts["Hello, world!"]

        snapshot("Screenshot1")

        XCTAssertEqual(helloWorldStaticText.label, "Hello, world!")
    }
}
