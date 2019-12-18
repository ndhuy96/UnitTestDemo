//
//  UnitTestDemoTests.swift
//  UnitTestDemoTests
//
//  Created by nguyen.duc.huyb on 12/18/19.
//  Copyright © 2019 nguyen.duc.huyb. All rights reserved.
//

import XCTest
@testable import UnitTestDemo

class UnitTestDemoTests: XCTestCase {
    
    var ferrari: Car!
    var jeep: Car!
    var honda: Car!
    
    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
        super.setUp()
        ferrari = Car(type: .Sport, transmissionMode: .Drive)
        jeep = Car(type: .OffRoad, transmissionMode: .Drive)
        honda = Car(type: .Economy, transmissionMode: .Park)
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
        ferrari = nil
        jeep = nil
        honda = nil
    }
    
    func testSportFasterThanJeep() {
        let minutes = 60
        
        // 1 start ferrari
        ferrari.start(minutes: minutes)
        // 2 start jeep
        jeep.start(minutes: minutes)
        // Test
        XCTAssertTrue(ferrari.miles > jeep.miles)
    }
}
