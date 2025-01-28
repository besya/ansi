//
//  ControlSequenceType.swift
//  ansi
//
//  Created by Ihar Biaspalau on 28.01.25.
//

public enum ControlSequenceType: String {
  /// Cursor Up
  ///
  /// Moves the cursor *n* (default `1`) cells up
  /// - term Code: CSI *n* A
  /// - term Abbr: CUU
  /// - term Example: \u{001B}[2A
  case cursorUp = "A"

  /// Cursor Down
  ///
  /// Moves the cursor *n* (default `1`) cells down
  /// - term Code: CSI *n* B
  /// - term Abbr: CUD
  /// - term Example: \u{001B}[2B
  case cursorDown = "B"

  /// Cursor Forward
  ///
  /// Moves the cursor *n* (default `1`) cells forward
  /// - term Code: CSI *n* C
  /// - term Abbr: CUF
  /// - term Example: \u{001B}[2C
  case cursorForward = "C"

  /// Cursor Back
  ///
  /// Moves the cursor *n* (default `1`) cells back
  /// - term Code: CSI *n* D
  /// - term Abbr: CUB
  /// - term Example: \u{001B}[2D
  case cursorBackward = "D"

  /// Cursor Next Line
  ///
  /// Moves cursor to beginning of the line *n* (default `1`) lines down
  /// - term Code: CSI *n* E
  /// - term Abbr: CNL
  /// - term Example: \u{001B}[2E
  case cursorNextLine = "E"

  /// Cursor Previous Line
  ///
  /// Moves cursor to beginning of the line *n* (default `1`) lines up
  /// - term Code: CSI *n* F
  /// - term Abbr: CPL
  /// - term Example: \u{001B}[2F
  case cursorPreviousLine = "F"

  /// Cursor Horizontal Absolute
  ///
  /// Moves the cursor to column *n* (default `1`)
  /// - term Code: CSI *n* G
  /// - term Abbr: CHA
  /// - term Example: \u{001B}[2G
  case cursorHorizontalAbsolute = "G"

  /// Cursor Position
  ///
  /// Moves the cursor to row *n*, column *m*
  /// - term Code: CSI *n* ; *m* H
  /// - term Abbr: CUP
  /// - term Example: \u{001B}[2;2H
  case cursorPosition = "H"

  /// Erase in Display
  ///
  /// Clears part of the screen
  /// - term Code: CSI *n* J
  /// - term Abbr: ED
  /// - term Example: \u{001B}[2J
  /// - note: If *n* is `0` (default), clear from cursor to end of screen
  /// - note: If *n* is `1`, clear from cursor to beginning of screen
  /// - note: If *n* is `2`, clear entire screen
  /// - note: If *n* is `3`, clear entire screen and delete all lines saved in scrollback buffer
  case eraseInDisplay = "J"

  /// Erase in Line
  ///
  /// Clears part of the line
  /// - term Code: CSI *n* K
  /// - term Abbr: EL
  /// - term Example: \u{001B}[2K
  /// - note: If *n* is `0` (default), clear from cursor to end of line
  /// - note: If *n* is `1`, clear from cursor to beginning of line
  /// - note: If *n* is `2`, clear entire line
  case eraseInLine = "K"

  /// Scroll Up
  ///
  /// Scroll whole page up by *n* (default `1`) lines. New lines are added at the bottom
  /// - term Code: CSI *n* S
  /// - term Abbr: SU
  /// - term Example: \u{001B}[2S
  case scrollUp = "S"

  /// Scroll Down
  ///
  /// Scroll whole page down by *n* (default `1`) lines. New lines are added at the top
  /// - term Code: CSI *n* T
  /// - term Abbr: SD
  /// - term Example: \u{001B}[2T
  case scrollDown = "T"

  /// Horizontal and Vertical Position
  ///
  /// Moves the cursor to row *n*, column *m*
  /// - term Code: CSI *n* ; *m* f
  /// - term Abbr: HVP
  /// - term Example: \u{001B}[2;2f
  case horizontalVerticalPosition = "f"

  /// Select Graphic Rendition
  ///
  /// Sets display attributes
  /// - term Code: CSI *n* m
  /// - term Abbr: SGR
  /// - term Example: \u{001B}[1;31m
  /// - note: Multiple values can be specified by separating them with semicolons
  /// - note: `0` Reset / Normal
  /// - note: `1` Bold or increased intensity
  /// - note: `2` Dim or decreased intensity
  /// - note: `3` Italic
  /// - note: `4` Underline
  /// - note: `5` Slow Blink
  /// - note: `6` Rapid Blink
  /// - note: `7` Reverse video (swap foreground and background)
  /// - note: `8` Conceal (hide)
  /// - note: `9` Crossed-out
  /// - note: `30-37` Set foreground color
  /// - note: `38` Set foreground color (next arguments are `5;n` or `2;r;g;b`)
  /// - note: `40-47` Set background color
  /// - note: `48` Set background color (next arguments are `5;n` or `2;r;g;b`)
  /// - note: `90-97` Set bright foreground color
  /// - note: `100-107` Set bright background color
  case selectGraphicRendition = "m"

  /// Device Status Report
  ///
  /// Reports the cursor position or device status
  /// - term Code: CSI *n* n
  /// - term Abbr: DSR
  /// - term Example: \u{001B}[6n
  /// - note: If *n* is `5`, device status report
  /// - note: If *n* is `6`, cursor position report
  case deviceStatusReport = "n"

  /// Save Cursor Position
  ///
  /// Saves the cursor position
  /// - term Code: CSI s
  /// - term Abbr: SCP
  /// - term Example: \u{001B}[s
  case saveCursorPosition = "s"

  /// Restore Cursor Position
  ///
  /// Restores the cursor position
  /// - term Code: CSI u
  /// - term Abbr: RCP
  /// - term Example: \u{001B}[u
  case restoreCursorPosition = "u"

  /// Hide Cursor
  ///
  /// Makes the cursor invisible
  /// - term Code: CSI ?25l
  /// - term Example: \u{001B}[?25l
  case hideCursor = "?25l"

  /// Show Cursor
  ///
  /// Makes the cursor visible
  /// - term Code: CSI ?25h
  /// - term Example: \u{001B}[?25h
  case showCursor = "?25h"

  /// Enable Alternative Screen Buffer
  ///
  /// Switches to the alternative screen buffer
  /// - term Code: CSI ?1049h
  /// - term Example: \u{001B}[?1049h
  case enableAlternativeBuffer = "?1049h"

  /// Disable Alternative Screen Buffer
  ///
  /// Switches back to the main screen buffer
  /// - term Code: CSI ?1049l
  /// - term Example: \u{001B}[?1049l
  case disableAlternativeBuffer = "?1049l"
}

extension ControlSequenceType {
  var bytes: [UInt8] {
    Array(rawValue.utf8)
  }
}
