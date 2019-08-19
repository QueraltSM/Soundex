import Foundation
import XCTest
@testable import Soundex

class SoundexTests: XCTestCase {
    func testStringRobertShouldReturnR163() {
        print(SoundexClass().getSoundex(text: "Robert"))
        XCTAssertTrue(SoundexClass().getSoundex(text: "Robert")=="R163")
    }
    func testStringRupertShouldReturnR163() {
        print(SoundexClass().getSoundex(text: "Rupert"))
        XCTAssertTrue(SoundexClass().getSoundex(text: "Rupert")=="R163")
    }
    func testStringRubinShouldReturnR150() {
        print(SoundexClass().getSoundex(text: "Rubin"))
        XCTAssertTrue(SoundexClass().getSoundex(text: "Rubin")=="R150")
    }
    func testStringAshcraftShouldReturnA261() {
        print(SoundexClass().getSoundex(text: "Ashcraft"))
        XCTAssertTrue(SoundexClass().getSoundex(text: "Ashcraft")=="A261")
    }
    func testStringAshcroftShouldReturnA261() {
        print(SoundexClass().getSoundex(text: "Ashcroft"))
        XCTAssertTrue(SoundexClass().getSoundex(text: "Ashcroft")=="A261")
    }
    func testStringTymczakShouldReturnT522() {
     print(SoundexClass().getSoundex(text: "Tymczak"))
       XCTAssertTrue(SoundexClass().getSoundex(text: "Tymczak")=="T522")
     }
    func testStringPfisterShouldReturnP236() {
        print(SoundexClass().getSoundex(text: "Pfister"))
        XCTAssertTrue(SoundexClass().getSoundex(text: "Pfister")=="P236")
    }
    func testStringHoneymanShouldReturnH555() {
        print(SoundexClass().getSoundex(text: "Honeyman"))
        XCTAssertTrue(SoundexClass().getSoundex(text: "Honeyman")=="H555")
    }
}
