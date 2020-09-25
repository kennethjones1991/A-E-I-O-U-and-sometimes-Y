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
    
    func checkIfVowel(character: Character, includeY: Bool) -> Bool {
        if includeY {
            if character.lowercased() == "a"
                || character.lowercased() == "e"
                || character.lowercased() == "i"
                || character.lowercased() == "o"
                || character.lowercased() == "u"
                || character.lowercased() == "y" {
                return true
            }
        } else {
            if character.lowercased() == "a"
                || character.lowercased() == "e"
                || character.lowercased() == "i"
                || character.lowercased() == "o"
                || character.lowercased() == "u" {
                return true
            }
        }
        
        return false
    }
    
    func numberOfVowels2(in string: String, isYAVowel: Bool = false) -> Int {
        // Write your code here
        var numVowels = 0
        // loop through each character in the string, if it's a vowel, no matter the case, add one to numVowels, remember to make numVowels 0 again at the end
        for character in string {
            if checkIfVowel(character: character, includeY: isYAVowel) {
                numVowels += 1
            }
        }
        
        return numVowels
    }
    
    func numberOfVowels(in string: String, isYAVowel: Bool = false) -> Int {
        var numVowels = 0
        var vowels = Set<Character>(["a", "e", "i", "o", "u", "A", "E", "I", "O", "U"])
        if isYAVowel { vowels.insert("y"); vowels.insert("Y") }
        
        for index in string.indices {
            if vowels.contains(string[index]) {
                numVowels += 1
            }
        }
        
        return numVowels
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
