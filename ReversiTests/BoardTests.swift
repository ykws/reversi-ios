//
//  BoardTests.swift
//  ReversiTests
//
//  Created by KAWASHIMA Yoshiyuki on 2020/05/02.
//  Copyright © 2020 Yuta Koshizawa. All rights reserved.
//

import XCTest
@testable import Reversi

class BoardTests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testInitializedBoard() {
        var board = Board()
        board.initialize()
        XCTAssertEqual(board.get(AtRow: 3, AtColumn: 3), .light)
        XCTAssertEqual(board.get(AtRow: 4, AtColumn: 3), .light)
        XCTAssertEqual(board.get(AtRow: 3, AtColumn: 4), .light)
        XCTAssertEqual(board.get(AtRow: 4, AtColumn: 4), .light)
    }

    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
