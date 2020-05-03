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
        let initializedBoard: [Cell] = [
            .blank, .blank, .blank, .blank, .blank, .blank, .blank, .blank,
            .blank, .blank, .blank, .blank, .blank, .blank, .blank, .blank,
            .blank, .blank, .blank, .blank, .blank, .blank, .blank, .blank,
            .blank, .blank, .blank, .light, .dark,  .blank, .blank, .blank,
            .blank, .blank, .blank, .dark,  .light, .blank, .blank, .blank,
            .blank, .blank, .blank, .blank, .blank, .blank, .blank, .blank,
            .blank, .blank, .blank, .blank, .blank, .blank, .blank, .blank,
            .blank, .blank, .blank, .blank, .blank, .blank, .blank, .blank,
        ]
        var board = Board()
        board.initialize()
        for row in 0...7 {
            for column in 0...7 {
                XCTAssertEqual(board.get(AtRow: row, AtColumn: column), initializedBoard[row + column * 8])
            }
        }
    }

    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
