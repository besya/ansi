//
//  ControlSequenceTests.swift
//  ansi
//
//  Created by Ihar Biaspalau on 28.01.25.
//

import Testing
import ansi

@Suite struct ControlSequenceTests {
    let CSI = "\u{001B}[" // Control Sequence Introducer
    static let nOptions = 1...10
    
    @Test func cursorUp() async throws {
        #expect(CursorUp().string == "\(CSI)1A")
    }
    
    @Test(arguments: nOptions) func cursorUp(n: Int) async throws {
        #expect(CursorUp(n).string == "\(CSI)\(n)A")
    }
    
    @Test func cursorDown() async throws {
        #expect(CursorDown().string == "\(CSI)1B")
    }

    @Test(arguments: nOptions) func cursorDown(n: Int) async throws {
        #expect(CursorDown(n).string == "\(CSI)\(n)B")
    }
    
    @Test func cursorForward() async throws {
        #expect(CursorForward().string == "\(CSI)1C")
    }
    
    @Test(arguments: nOptions) func cursorForward(n: Int) async throws {
        #expect(CursorForward(n).string == "\(CSI)\(n)C")
    }
    
    @Test func cursorBack() async throws {
        #expect(CursorBackward().string == "\(CSI)1D")
    }
    
    @Test(arguments: nOptions) func cursorBack(n: Int) async throws {
        #expect(CursorBackward(n).string == "\(CSI)\(n)D")
    }
    
    @Test func cursorNextLine() async throws {
        #expect(CursorNextLine().string == "\(CSI)1E")
    }
    
    @Test(arguments: nOptions) func cursorNextLine(n: Int) async throws {
        #expect(CursorNextLine(n).string == "\(CSI)\(n)E")
    }
    
    @Test func cursorPreviousLine() async throws {
        #expect(CursorPreviousLine().string == "\(CSI)1F")
    }
    
    @Test(arguments: nOptions) func cursorPreviousLine(n: Int) async throws {
        #expect(CursorPreviousLine(n).string == "\(CSI)\(n)F")
    }
    
    @Test func cursorHorizontalAbsolute() async throws {
        #expect(CursorHorizontalAbsolute().string == "\(CSI)1G")
    }
    
    @Test(arguments: nOptions) func cursorHorizontalAbsolute(n: Int) async throws {
        #expect(CursorHorizontalAbsolute(n).string == "\(CSI)\(n)G")
    }
    
    @Test func cursorPosition() async throws {
        #expect(CursorPosition().string == "\(CSI)1;1H")
    }
    
    @Test(arguments: nOptions) func cursorPosition(n: Int) async throws {
        #expect(CursorPosition(n, n).string == "\(CSI)\(n);\(n)H")
    }
    
    @Test func eraseInDisplay() async throws {
        #expect(EraseInDisplay().string == "\(CSI)0J")
    }
    
    @Test(arguments: nOptions) func eraseInDisplay(n: Int) async throws {
        #expect(EraseInDisplay(n).string == "\(CSI)\(n)J")
    }
    
    @Test func eraseInLine() async throws {
        #expect(EraseInLine().string == "\(CSI)0K")
    }
    
    @Test(arguments: nOptions) func eraseInLine(n: Int) async throws {
        #expect(EraseInLine(n).string == "\(CSI)\(n)K")
    }
    
    @Test func scrollUp() async throws {
        #expect(ScrollUp().string == "\(CSI)1S")
    }
    
    @Test(arguments: nOptions) func scrollUp(n: Int) async throws {
        #expect(ScrollUp(n).string == "\(CSI)\(n)S")
    }
    
    @Test func scrollDown() async throws {
        #expect(ScrollDown().string == "\(CSI)1T")
    }
    
    @Test(arguments: nOptions) func scrollDown(n: Int) async throws {
        #expect(ScrollDown(n).string == "\(CSI)\(n)T")
    }
    
    @Test func horizontalVerticalPosition() async throws {
        #expect(HorizontalVerticalPosition().string == "\(CSI)1;1f")
    }
    
    @Test(arguments: nOptions) func horizontalVerticalPosition(n: Int) async throws {
        #expect(HorizontalVerticalPosition(n, n).string == "\(CSI)\(n);\(n)f")
    }
    
    @Test func selectGraphicRendition() async throws {
        #expect(SelectGraphicRendition(.defaultFont).string == "\(CSI)10m")
    }
    
    @Test(arguments: nOptions) func selectGraphicRendition(n: Int) async throws {
        #expect(SelectGraphicRendition(.setForegroundColor, parameters: [String(n)]).string == "\(CSI)38;\(n)m")
    }
}
