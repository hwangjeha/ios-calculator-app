//
//  CalculatorItemQueueTests.swift
//  CalculatorItemQueueTests
//
//  Created by 황제하 on 2021/11/08.
//

import XCTest

class CalculatorItemQueueTests: XCTestCase {
    var sut: CalculatorItemQueue<Int>!
    
    override func setUpWithError() throws {
        sut = CalculatorItemQueue<Int>()
    }

    override func tearDownWithError() throws {
        sut = nil
    }
    
    func test_CalculatorItemQueue의_Items이_비어있는지() {
        let isEmpty = sut.items.isEmpty
        
        XCTAssertTrue(isEmpty)
    }
    
    func test_CalculatorItemQueue에enqueue했을때_Items이_비어있지않는지() {
        let item = 1
        
        sut.enqueue(item: item)
        
        let result = sut.items.isEmpty
        
        XCTAssertFalse(result)
    }
}
