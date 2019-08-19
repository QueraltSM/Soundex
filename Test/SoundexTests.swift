import Foundation
import XCTest
@testable import Soundex

class SoundexTests: XCTestCase {
    func testStringRobertShouldReturnR163() {
        XCTAssertTrue(SoundexClass().getSoundex(text: "Robert")=="R163")
    }
    func testStringRupertShouldReturnR163() {
        XCTAssertTrue(SoundexClass().getSoundex(text: "Rupert")=="R163")
    }
    func testStringRubinShouldReturnR150() {
        XCTAssertTrue(SoundexClass().getSoundex(text: "Rubin")=="R150")
    }
    func testStringAshcraftShouldReturnA261() {
        XCTAssertTrue(SoundexClass().getSoundex(text: "Ashcraft")=="A261")
    }
    func testStringAshcroftShouldReturnA261() {
        XCTAssertTrue(SoundexClass().getSoundex(text: "Ashcroft")=="A261")
    }
    func testStringTymczakShouldReturnT522() {
       XCTAssertTrue(SoundexClass().getSoundex(text: "Tymczak")=="T522")
     }
    func testStringPfisterShouldReturnP236() {
        XCTAssertTrue(SoundexClass().getSoundex(text: "Pfister")=="P236")
    }
    func testStringHoneymanShouldReturnH555() {
        XCTAssertTrue(SoundexClass().getSoundex(text: "Honeyman")=="H555")
    }
}
