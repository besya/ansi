//
//  CSISequenceTests.swift
//  ansi
//
//  Created by Ihar Biaspalau on 28.01.25.
//

import Testing
import ansi

@Suite struct CSISequenceTests {
    let CSI = "\u{001B}[" // Control Sequence Introducer
    static let nOptions = 1...10
    
    @Test func CursorUp() async throws {
        #expect(CSISequence.cursorUp.sequence() == "\(CSI)1A")
    }
    
    @Test(arguments: nOptions) func CursorUp(n: Int) async throws {
        #expect(CSISequence.cursorUp.sequence(n) == "\(CSI)\(n)A")
    }
    
    @Test func CursorDown() async throws {
        #expect(CSISequence.cursorDown.sequence() == "\(CSI)1B")
    }
    
    @Test(arguments: nOptions) func CursorDown(n: Int) async throws {
        #expect(CSISequence.cursorDown.sequence(n) == "\(CSI)\(n)B")
    }
    
    @Test func CursorForward() async throws {
        #expect(CSISequence.cursorForward.sequence() == "\(CSI)1C")
    }
    
    @Test(arguments: nOptions) func CursorForward(n: Int) async throws {
        #expect(CSISequence.cursorForward.sequence(n) == "\(CSI)\(n)C")
    }
    
    @Test func CursorBack() async throws {
        #expect(CSISequence.cursorBack.sequence() == "\(CSI)1D")
    }
    
    @Test(arguments: nOptions) func CursorBack(n: Int) async throws {
        #expect(CSISequence.cursorBack.sequence(n) == "\(CSI)\(n)D")
    }
    
    @Test func CursorNextLine() async throws {
        #expect(CSISequence.cursorNextLine.sequence() == "\(CSI)1E")
    }
    
    @Test(arguments: nOptions) func CursorNextLine(n: Int) async throws {
        #expect(CSISequence.cursorNextLine.sequence(n) == "\(CSI)\(n)E")
    }
    
    @Test func CursorPreviousLine() async throws {
        #expect(CSISequence.cursorPreviousLine.sequence() == "\(CSI)1F")
    }
    
    @Test(arguments: nOptions) func CursorPreviousLine(n: Int) async throws {
        #expect(CSISequence.cursorPreviousLine.sequence(n) == "\(CSI)\(n)F")
    }
    
    @Test func CursorHorizontalAbsolute() async throws {
        #expect(CSISequence.cursorHorizontalAbsolute.sequence() == "\(CSI)1G")
    }
    
    @Test(arguments: nOptions) func CursorHorizontalAbsolute(n: Int) async throws {
        #expect(CSISequence.cursorHorizontalAbsolute.sequence(n) == "\(CSI)\(n)G")
    }
    
    @Test func CursorPosition() async throws {
        #expect(CSISequence.cursorPosition.sequence() == "\(CSI)1;1H")
    }
    
    @Test(arguments: nOptions) func CursorPosition(n: Int) async throws {
        #expect(CSISequence.cursorPosition.sequence(n, n) == "\(CSI)\(n);\(n)H")
    }
    
    @Test func EraseInDisplay() async throws {
        #expect(CSISequence.eraseInDisplay.sequence() == "\(CSI)0J")
    }
    
    @Test(arguments: nOptions) func EraseInDisplay(n: Int) async throws {
        #expect(CSISequence.eraseInDisplay.sequence(n) == "\(CSI)\(n)J")
    }
    
    @Test func EraseInLine() async throws {
        #expect(CSISequence.eraseInLine.sequence() == "\(CSI)0K")
    }
    
    @Test(arguments: nOptions) func EraseInLine(n: Int) async throws {
        #expect(CSISequence.eraseInLine.sequence(n) == "\(CSI)\(n)K")
    }
    
    @Test func ScrollUp() async throws {
        #expect(CSISequence.scrollUp.sequence() == "\(CSI)1S")
    }
    
    @Test(arguments: nOptions) func ScrollUp(n: Int) async throws {
        #expect(CSISequence.scrollUp.sequence(n) == "\(CSI)\(n)S")
    }
    
    @Test func ScrollDown() async throws {
        #expect(CSISequence.scrollDown.sequence() == "\(CSI)1T")
    }
    
    @Test(arguments: nOptions) func ScrollDown(n: Int) async throws {
        #expect(CSISequence.scrollDown.sequence(n) == "\(CSI)\(n)T")
    }
    
    @Test func HorizontalVerticalPosition() async throws {
        #expect(CSISequence.horizontalVerticalPosition.sequence() == "\(CSI)1;1f")
    }
    
    @Test(arguments: nOptions) func HorizontalVerticalPosition(n: Int) async throws {
        #expect(CSISequence.horizontalVerticalPosition.sequence(n, n) == "\(CSI)\(n);\(n)f")
    }
    
    @Test func SelectGraphicRendition() async throws {
        #expect(CSISequence.selectGraphicRendition.sequence() == "\(CSI)0m")
    }
    
    @Test(arguments: nOptions) func SelectGraphicRendition(n: Int) async throws {
        #expect(CSISequence.selectGraphicRendition.sequence(n) == "\(CSI)\(n)m")
    }
}
