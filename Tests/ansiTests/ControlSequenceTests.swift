//
//  ControlSequenceTests.swift
//  ansi
//
//  Created by Ihar Biaspalau on 28.01.25.
//

import ANSI
import ASCII
import Testing

@Suite("Control Sequences")
struct ControlSequenceSuite {
  static let intRange = (0...10)

  func escapeSequence(_ command: ControlSequenceCommand) -> EscapeSequence {
    .controlSequence(command)
  }

  func sequence(_ command: ControlSequenceCommand) -> ANSISequence {
    escapeSequence(command).sequence
  }

  func inspect(_ command: ControlSequenceCommand) -> String {
    escapeSequence(command).inspect(as: .escaped)
  }

  @Test(arguments: intRange)
  func cursorUp(_ cell: Int) async throws {
    #expect(inspect(.cursorUp(cell)) == "\\x1b[\(cell)A")
  }

  @Test(arguments: intRange)
  func cursorDown(_ cell: Int) async throws {
    #expect(inspect(.cursorDown(cell)) == "\\x1b[\(cell)B")
  }

  @Test(arguments: intRange)
  func cursorForward(_ cell: Int) async throws {
    #expect(inspect(.cursorForward(cell)) == "\\x1b[\(cell)C")
  }

  @Test(arguments: intRange)
  func cursorBack(_ cell: Int) async throws {
    #expect(inspect(.cursorBack(cell)) == "\\x1b[\(cell)D")
  }

  @Test(arguments: intRange)
  func cursorNextLine(_ cell: Int) async throws {
    #expect(inspect(.cursorNextLine(cell)) == "\\x1b[\(cell)E")
  }

  @Test(arguments: intRange)
  func cursorPreviousLine(_ cell: Int) async throws {
    #expect(inspect(.cursorPreviousLine(cell)) == "\\x1b[\(cell)F")
  }

  @Test(arguments: intRange)
  func cursorHorizontalAbsolute(_ cell: Int) async throws {
    #expect(inspect(.cursorHorizontalAbsolute(cell)) == "\\x1b[\(cell)G")
  }

  @Test(arguments: intRange)
  func cursorPosition(_ row: Int) async throws {
    #expect(inspect(.cursorPosition(row, row)) == "\\x1b[\(row);\(row)H")
  }

  @Test(arguments: [
    EraseInDisplay.fromCursorToEndOfScreen: ASCII.digit0,
    .fromCursorToBeginningOfScreen: .digit1,
    .entireScreen: .digit2,
    .entireScreenAndDeleteAllLines: .digit3,
  ])
  func eraseInDisplay(_ type: EraseInDisplay, _ ascii: ASCII) async throws {
    #expect(
      inspect(.eraseInDisplay(type)) == "\\x1b[\(ascii.unicode)J"
    )
  }

  @Test(arguments: [
    EraseInLine.fromCursorToEndOfLine: ASCII.digit0,
    .fromCursorToBeginningOfLine: .digit1,
    .entireLine: .digit2,
  ])
  func eraseInLine(_ type: EraseInLine, _ ascii: ASCII) async throws {
    #expect(
      inspect(.eraseInLine(type)) == "\\x1b[\(ascii.unicode)K"
    )
  }

  @Test(arguments: intRange)
  func scrollUp(_ cell: Int) async throws {
    #expect(inspect(.scrollUp(cell)) == "\\x1b[\(cell)S")
  }

  @Test(arguments: intRange)
  func scrollDown(_ cell: Int) async throws {
    #expect(inspect(.scrollDown(cell)) == "\\x1b[\(cell)T")
  }

  @Test(arguments: intRange)
  func horizontalVerticalPosition(_ row: Int) async throws {
    #expect(
      inspect(.horizontalVerticalPosition(row, row)) == "\\x1b[\(row);\(row)f"
    )
  }

  @Test func selectGraphicRendition() async throws {
    #expect(inspect(.selectGraphicRendition([.bold])) == "\\x1b[1m")
  }

  @Test func deviceStatusReport() async throws {
    #expect(inspect(.deviceStatusReport) == "\\x1b[6n")
  }

  @Test func saveCursorPosition() async throws {
    #expect(inspect(.saveCursorPosition) == "\\x1b[s")
  }

  @Test func restoreCursorPosition() async throws {
    #expect(inspect(.restoreCursorPosition) == "\\x1b[u")
  }

  @Test func showCursor() async throws {
    #expect(inspect(.showCursor) == "\\x1b[?25h")
  }

  @Test func hideCursor() async throws {
    #expect(inspect(.hideCursor) == "\\x1b[?25l")
  }

}
