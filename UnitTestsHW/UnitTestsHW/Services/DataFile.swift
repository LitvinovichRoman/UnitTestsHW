//
//  DataFile.swift
//  UnitTestsHW
//
//  Created by Roman Litvinovich on 11/01/2024.
//

import Foundation

struct DataFile {
    private(set) var values = (firstValue: 0, secondValue: 0)
    
    func addition(x: Int, y: Int) -> Int {
        return x + y
    }
    
    func multiplication(x: Int, y: Int) -> Int {
        return x * y
    }
    
    func dividing(x: Double, y: Double) throws -> Double {
        if y == 0 {
            throw NSError(domain: "", code: 0, userInfo: [NSLocalizedDescriptionKey : "Division by zero is imposible"])
        }
        return x / y
    }
}
