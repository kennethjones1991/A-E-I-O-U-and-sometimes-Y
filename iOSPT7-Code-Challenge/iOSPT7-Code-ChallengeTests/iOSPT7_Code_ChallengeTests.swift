//
//  iOSPT7_Code_ChallengeTests.swift
//  iOSPT7-Code-ChallengeTests
//
//  Created by Michael McGrath on 9/24/20.
//

import XCTest
@testable import iOSPT7_Code_Challenge

class iOSPT7_Code_ChallengeTests: XCTestCase {
    
    let example = "Polly wants a cracker!"
    let greatMysteriesOfLife = "What if the dryer has been stealing all our clothes this whole time, but we only notice the socks because they come in pairs?"
    let tikTokGlad = "Sing or I shoot"
    let y = "YYYyyyYyYyYYYYY"
    
    
    func numberOfVowels(in string: String, isYAVowel: Bool = false) -> Int {
        // Write your code here
        
        // This is here so the compiler won't yell, change this as needed for your code
        return 0
    }

    func testReadMeExample() {
        XCTAssertEqual(numberOfVowels(in: example, isYAVowel: false), 5)
        XCTAssertEqual(numberOfVowels(in: example, isYAVowel: true), 6)
    }

    func testExampleEmpty() {
        XCTAssertEqual(numberOfVowels(in: String(), isYAVowel: false), 0)
        XCTAssertEqual(numberOfVowels(in: String(), isYAVowel: true), 0)
    }
    
    func testGreatMysteriesOfLife() {
        XCTAssertEqual(numberOfVowels(in: greatMysteriesOfLife, isYAVowel: false), 38)
        XCTAssertEqual(numberOfVowels(in: greatMysteriesOfLife, isYAVowel: true), 41)
    }
    
    func testGladTikTok() {
        XCTAssertEqual(numberOfVowels(in: tikTokGlad, isYAVowel: false), 5)
        XCTAssertEqual(numberOfVowels(in: tikTokGlad, isYAVowel: true), 5)
    }
    
    func testAllY() {
        XCTAssertEqual(numberOfVowels(in: y, isYAVowel: false), 0)
        XCTAssertEqual(numberOfVowels(in: y, isYAVowel: true), 15)
    }
    
    func testPerformance() {
        
        let string = String(repeating: "o", count: 10000) + String(repeating: "Y", count: 10000) + String(repeating: "L", count: 10000) + String(repeating: "E", count: 10000) + example + String(repeating: "y", count: 10000) + tikTokGlad + greatMysteriesOfLife + String(repeating: "q", count: 10000) + y
        
        self.measure {
            XCTAssertEqual(numberOfVowels(in: string, isYAVowel: false), 20048)
            XCTAssertEqual(numberOfVowels(in: string, isYAVowel: true), 40067)
        }
    }
}
