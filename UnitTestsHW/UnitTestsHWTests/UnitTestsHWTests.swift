//
//  UnitTestsHWTests.swift
//  UnitTestsHWTests
//
//  Created by Roman Litvinovich on 11/01/2024.
//

import XCTest
@testable import UnitTestsHW

final class UnitTestsHWTests: XCTestCase {
    var sut: DataFile!

    override func setUpWithError() throws {
        super.setUp()
        sut = DataFile()
    }

    override func tearDownWithError() throws {
        sut = nil
        super.tearDown()
    }

    func testAddition() {
        let result = sut.addition(x: 5, y: 6)
        XCTAssertEqual(result, 11)
    }

    func testMultiplication() {
        let result = sut.multiplication(x: 5, y: 3)
        XCTAssertEqual(result, 15)
    }

    func testDividing() throws {
        let result = try sut.dividing(x: 10.0, y: 5.0)
        XCTAssertEqual(result, 2.0, accuracy: 0.001)
    }

    func testDividingByZero() throws {
        XCTAssertThrowsError(try sut.dividing(x: 10.0, y: 0.0))
    }

    
}
