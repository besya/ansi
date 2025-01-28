//
//  ControlCode.swift
//  ansi
//
//  Created by Ihar Biaspalau on 28.01.25.
//

import Foundation

/// Control codes encompassing both C0 (0-31, 127) and C1 (128-159) ranges
public enum ControlCode: Int {
    // MARK: - C0 Control Codes (0-31, 127)

    /// Null
    ///
    /// Used as a separator between segments of data.
    /// - term ^: ^@
    /// - term Abbr: NUL
    /// - term ASCII: \0
    /// - term Unicode: \u{0000}
    /// - term Hex: 0x00
    /// - term Decimal: 0
    /// - note: Originally used to allow gaps to be left on paper tape for later insertion of data
    case null = 0

    /// Start of Heading
    ///
    /// Indicates the beginning of a message header.
    /// - term ^: ^A
    /// - term Abbr: SOH
    /// - term ASCII: \x01
    /// - term Unicode: \u{0001}
    /// - term Hex: 0x01
    /// - term Decimal: 1
    /// - note: Used to mark the start of a logical header of information
    case startOfHeading = 1

    /// Start of Text
    ///
    /// Indicates the start of the actual message content.
    /// - term ^: ^B
    /// - term Abbr: STX
    /// - term ASCII: \x02
    /// - term Unicode: \u{0002}
    /// - term Hex: 0x02
    /// - term Decimal: 2
    /// - note: Marks the beginning of the actual text transmission
    case startOfText = 2

    /// End of Text
    ///
    /// Indicates the end of the transmitted text.
    /// - term ^: ^C
    /// - term Abbr: ETX
    /// - term ASCII: \x03
    /// - term Unicode: \u{0003}
    /// - term Hex: 0x03
    /// - term Decimal: 3
    /// - note: Often used as interrupt signal in modern systems (CTRL+C)
    case endOfText = 3

    /// End of Transmission
    ///
    /// Indicates the end of the transmission.
    /// - term ^: ^D
    /// - term Abbr: EOT
    /// - term ASCII: \x04
    /// - term Unicode: \u{0004}
    /// - term Hex: 0x04
    /// - term Decimal: 4
    /// - note: Signals that no more data will be transmitted
    case endOfTransmission = 4

    /// Enquiry
    ///
    /// Request for a response from remote equipment.
    /// - term ^: ^E
    /// - term Abbr: ENQ
    /// - term ASCII: \x05
    /// - term Unicode: \u{0005}
    /// - term Hex: 0x05
    /// - term Decimal: 5
    /// - note: Used to request a station identification or status
    case enquiry = 5

    /// Acknowledge
    ///
    /// Indicates positive acknowledgment.
    /// - term ^: ^F
    /// - term Abbr: ACK
    /// - term ASCII: \x06
    /// - term Unicode: \u{0006}
    /// - term Hex: 0x06
    /// - term Decimal: 6
    /// - note: Used to indicate that the previous transmission was received successfully
    case acknowledge = 6

    /// Bell
    ///
    /// Produces an audible or visible signal.
    /// - term ^: ^G
    /// - term Abbr: BEL
    /// - term ASCII: \x07
    /// - term Unicode: \u{0007}
    /// - term Hex: 0x07
    /// - term Decimal: 7
    /// - note: Originally used to sound a physical bell on the terminal
    case bell = 7

    /// Backspace
    ///
    /// Moves the cursor one position backwards.
    /// - term ^: ^H
    /// - term Abbr: BS
    /// - term ASCII: \x08
    /// - term Unicode: \u{0008}
    /// - term Hex: 0x08
    /// - term Decimal: 8
    /// - note: May delete the character at that position on some systems
    case backspace = 8

    /// Horizontal Tab
    ///
    /// Moves the cursor to the next horizontal tab stop.
    /// - term ^: ^I
    /// - term Abbr: HT
    /// - term ASCII: \x09
    /// - term Unicode: \u{0009}
    /// - term Hex: 0x09
    /// - term Decimal: 9
    /// - note: Common tab character
    case horizontalTab = 9

    /// Line Feed
    ///
    /// Moves the cursor down one line.
    /// - term ^: ^J
    /// - term Abbr: LF
    /// - term ASCII: \x0A
    /// - term Unicode: \u{000A}
    /// - term Hex: 0x0A
    /// - term Decimal: 10
    /// - note: Unix-style newline character
    case lineFeed = 10

    /// Vertical Tab
    ///
    /// Moves the cursor down to the next vertical tab stop.
    /// - term ^: ^K
    /// - term Abbr: VT
    /// - term ASCII: \x0B
    /// - term Unicode: \u{000B}
    /// - term Hex: 0x0B
    /// - term Decimal: 11
    /// - note: Rarely used in modern systems
    case verticalTab = 11

    /// Form Feed
    ///
    /// Moves to the next page or clears the screen.
    /// - term ^: ^L
    /// - term Abbr: FF
    /// - term ASCII: \x0C
    /// - term Unicode: \u{000C}
    /// - term Hex: 0x0C
    /// - term Decimal: 12
    /// - note: Originally used to advance paper to top of next page in printers
    case formFeed = 12

    /// Carriage Return
    ///
    /// Moves the cursor to the beginning of the current line.
    /// - term ^: ^M
    /// - term Abbr: CR
    /// - term ASCII: \x0D
    /// - term Unicode: \u{000D}
    /// - term Hex: 0x0D
    /// - term Decimal: 13
    /// - note: Named after the mechanical carriage return operation on typewriters
    case carriageReturn = 13

    /// Shift Out
    ///
    /// Switch to alternate character set.
    /// - term ^: ^N
    /// - term Abbr: SO
    /// - term ASCII: \x0E
    /// - term Unicode: \u{000E}
    /// - term Hex: 0x0E
    /// - term Decimal: 14
    /// - note: Often used to switch to alternate character sets
    case shiftOut = 14

    /// Shift In
    ///
    /// Return to standard character set.
    /// - term ^: ^O
    /// - term Abbr: SI
    /// - term ASCII: \x0F
    /// - term Unicode: \u{000F}
    /// - term Hex: 0x0F
    /// - term Decimal: 15
    /// - note: Returns to standard character set after SO
    case shiftIn = 15

    /// Data Link Escape
    ///
    /// Following characters are interpreted as data, not commands.
    /// - term ^: ^P
    /// - term Abbr: DLE
    /// - term ASCII: \x10
    /// - term Unicode: \u{0010}
    /// - term Hex: 0x10
    /// - term Decimal: 16
    /// - note: Used to indicate that subsequent characters are data, not control characters
    case dataLinkEscape = 16

    /// Device Control 1 (XON)
    ///
    /// Device-specific control code, often used for flow control.
    /// - term ^: ^Q
    /// - term Abbr: DC1
    /// - term ASCII: \x11
    /// - term Unicode: \u{0011}
    /// - term Hex: 0x11
    /// - term Decimal: 17
    /// - note: Commonly used as XON signal in software flow control
    case deviceControl1 = 17

    /// Device Control 2
    ///
    /// Device-specific control code.
    /// - term ^: ^R
    /// - term Abbr: DC2
    /// - term ASCII: \x12
    /// - term Unicode: \u{0012}
    /// - term Hex: 0x12
    /// - term Decimal: 18
    /// - note: Function depends on device
    case deviceControl2 = 18

    /// Device Control 3 (XOFF)
    ///
    /// Device-specific control code, often used for flow control.
    /// - term ^: ^S
    /// - term Abbr: DC3
    /// - term ASCII: \x13
    /// - term Unicode: \u{0013}
    /// - term Hex: 0x13
    /// - term Decimal: 19
    /// - note: Commonly used as XOFF signal in software flow control
    case deviceControl3 = 19

    /// Device Control 4
    ///
    /// Device-specific control code.
    /// - term ^: ^T
    /// - term Abbr: DC4
    /// - term ASCII: \x14
    /// - term Unicode: \u{0014}
    /// - term Hex: 0x14
    /// - term Decimal: 20
    /// - note: Function depends on device
    case deviceControl4 = 20

    /// Negative Acknowledge
    ///
    /// Indicates that the previous transmission was received with errors.
    /// - term ^: ^U
    /// - term Abbr: NAK
    /// - term ASCII: \x15
    /// - term Unicode: \u{0015}
    /// - term Hex: 0x15
    /// - term Decimal: 21
    /// - note: Used in error control protocols
    case negativeAcknowledge = 21

    /// Synchronous Idle
    ///
    /// Synchronization character for data transmission.
    /// - term ^: ^V
    /// - term Abbr: SYN
    /// - term ASCII: \x16
    /// - term Unicode: \u{0016}
    /// - term Hex: 0x16
    /// - term Decimal: 22
    /// - note: Used in synchronous data transmission systems
    case synchronousIdle = 22

    /// End of Transmission Block
    ///
    /// Indicates the end of a transmission block.
    /// - term ^: ^W
    /// - term Abbr: ETB
    /// - term ASCII: \x17
    /// - term Unicode: \u{0017}
    /// - term Hex: 0x17
    /// - term Decimal: 23
    /// - note: Used in block-oriented data transmission
    case endOfTransmissionBlock = 23

    /// Cancel
    ///
    /// Indicates that previous data should be disregarded.
    /// - term ^: ^X
    /// - term Abbr: CAN
    /// - term ASCII: \x18
    /// - term Unicode: \u{0018}
    /// - term Hex: 0x18
    /// - term Decimal: 24
    /// - note: Used to indicate that previous data is in error
    case cancel = 24

    /// End of Medium
    ///
    /// Indicates the physical end of a medium.
    /// - term ^: ^Y
    /// - term Abbr: EM
    /// - term ASCII: \x19
    /// - term Unicode: \u{0019}
    /// - term Hex: 0x19
    /// - term Decimal: 25
    /// - note: Originally used to indicate the end of paper tape or other physical media
    case endOfMedium = 25

    /// Substitute
    ///
    /// Used to replace a character known to be invalid.
    /// - term ^: ^Z
    /// - term Abbr: SUB
    /// - term ASCII: \x1A
    /// - term Unicode: \u{001A}
    /// - term Hex: 0x1A
    /// - term Decimal: 26
    /// - note: Often used as EOF marker in Windows systems
    case substitute = 26

    /// Escape
    ///
    /// Introduces an escape sequence.
    /// - term ^: ^[
    /// - term Abbr: ESC
    /// - term ASCII: \x1B
    /// - term Unicode: \u{001B}
    /// - term Hex: 0x1B
    /// - term Decimal: 27
    /// - note: Used to start escape sequences for terminal control
    case escape = 27

    /// File Separator
    ///
    /// Separates file level data items.
    /// - term ^: ^\
    /// - term Abbr: FS
    /// - term ASCII: \x1C
    /// - term Unicode: \u{001C}
    /// - term Hex: 0x1C
    /// - term Decimal: 28
    /// - note: One of four hierarchical separator characters
    case fileSeparator = 28

    /// Group Separator
    ///
    /// Separates group level data items.
    /// - term ^: ^]
    /// - term Abbr: GS
    /// - term ASCII: \x1D
    /// - term Unicode: \u{001D}
    /// - term Hex: 0x1D
    /// - term Decimal: 29
    /// - note: One of four hierarchical separator characters
    case groupSeparator = 29

    /// Record Separator
    ///
    /// Separates record level data items.
    /// - term ^: ^^
    /// - term Abbr: RS
    /// - term ASCII: \x1E
    /// - term Unicode: \u{001E}
    /// - term Hex: 0x1E
    /// - term Decimal: 30
    /// - note: One of four hierarchical separator characters
    case recordSeparator = 30

    /// Unit Separator
    ///
    /// Separates unit level data items.
    /// - term ^: ^_
    /// - term Abbr: US
    /// - term ASCII: \x1F
    /// - term Unicode: \u{001F}
    /// - term Hex: 0x1F
    /// - term Decimal: 31
    /// - note: One of four hierarchical separator characters
    case unitSeparator = 31

    /// Delete
    ///
    /// Deletes or rubs out the previous character.
    /// - term ^: ^?
    /// - term Abbr: DEL
    /// - term ASCII: \x7F
    /// - term Unicode: \u{007F}
    /// - term Hex: 0x7F
    /// - term Decimal: 127
    /// - note: Originally used to mark deleted characters by punching all holes on paper tape
    case delete = 127

    // MARK: - C1 Control Codes (128-159)

    /// Padding Character
    ///
    /// Used for padding data streams.
    /// - term Abbr: PAD
    /// - term ASCII: \x80
    /// - term Unicode: \u{0080}
    /// - term Hex: 0x80
    /// - term Decimal: 128
    /// - note: Used as a data stream padding character
    case paddingCharacter = 128

    /// High Octet Preset
    ///
    /// Used to indicate high order byte transmission
    /// - term Abbr: HOP
    /// - term ASCII: \x81
    /// - term Unicode: \u{0081}
    /// - term Hex: 0x81
    /// - term Decimal: 129
    /// - note: Used in high order byte protocols
    case highOctetPreset = 129

    /// Break Permitted Here
    ///
    /// Indicates a point where a break may occur.
    /// - term Abbr: BPH
    /// - term ASCII: \x82
    /// - term Unicode: \u{0082}
    /// - term Hex: 0x82
    /// - term Decimal: 130
    /// - note: Marks possible line break positions
    case breakPermittedHere = 130

    /// No Break Here
    ///
    /// Indicates a point where a break should not occur.
    /// - term Abbr: NBH
    /// - term ASCII: \x83
    /// - term Unicode: \u{0083}
    /// - term Hex: 0x83
    /// - term Decimal: 131
    /// - note: Prevents line breaks at specific positions
    case noBreakHere = 131

    /// Index
    ///
    /// Moves cursor down one line.
    /// - term Abbr: IND
    /// - term ASCII: \x84
    /// - term Unicode: \u{0084}
    /// - term Hex: 0x84
    /// - term Decimal: 132
    /// - note: Similar to line feed but maintains column position
    case index = 132

    /// Next Line
    ///
    /// Moves to start of next line.
    /// - term Abbr: NEL
    /// - term ASCII: \x85
    /// - term Unicode: \u{0085}
    /// - term Hex: 0x85
    /// - term Decimal: 133
    /// - note: Combines carriage return and line feed functionality
    case nextLine = 133

    /// Start of Selected Area
    ///
    /// Marks the start of a selected area.
    /// - term Abbr: SSA
    /// - term ASCII: \x86
    /// - term Unicode: \u{0086}
    /// - term Hex: 0x86
    /// - term Decimal: 134
    /// - note: Used for marking text selections
    case startOfSelectedArea = 134

    /// End of Selected Area
    ///
    /// Marks the end of a selected area.
    /// - term Abbr: ESA
    /// - term ASCII: \x87
    /// - term Unicode: \u{0087}
    /// - term Hex: 0x87
    /// - term Decimal: 135
    /// - note: Terminates text selection started by SSA
    case endOfSelectedArea = 135

    /// Horizontal Tabulation Set
    ///
    /// Sets a horizontal tab stop.
    /// - term Abbr: HTS
    /// - term ASCII: \x88
    /// - term Unicode: \u{0088}
    /// - term Hex: 0x88
    /// - term Decimal: 136
    /// - note: Sets a tab stop at the current position
    case horizontalTabulationSet = 136

    /// Horizontal Tabulation with Justification
    ///
    /// Tab with justification.
    /// - term Abbr: HTJ
    /// - term ASCII: \x89
    /// - term Unicode: \u{0089}
    /// - term Hex: 0x89
    /// - term Decimal: 137
    /// - note: Similar to HTS but with text justification
    case horizontalTabulationWithJustification = 137

    /// Vertical Tabulation Set
    ///
    /// Sets a vertical tab stop.
    /// - term Abbr: VTS
    /// - term ASCII: \x8A
    /// - term Unicode: \u{008A}
    /// - term Hex: 0x8A
    /// - term Decimal: 138
    /// - note: Sets a vertical tab stop at current line
    case verticalTabulationSet = 138

    /// Partial Line Down
    ///
    /// Moves cursor partially down.
    /// - term Abbr: PLD
    /// - term ASCII: \x8B
    /// - term Unicode: \u{008B}
    /// - term Hex: 0x8B
    /// - term Decimal: 139
    /// - note: Used for subscript text
    case partialLineDown = 139

    /// Partial Line Up
    ///
    /// Moves cursor partially up.
    /// - term Abbr: PLU
    /// - term ASCII: \x8C
    /// - term Unicode: \u{008C}
    /// - term Hex: 0x8C
    /// - term Decimal: 140
    /// - note: Used for superscript text
    case partialLineUp = 140

    /// Reverse Index
    ///
    /// Moves cursor up one line.
    /// - term Abbr: RI
    /// - term ASCII: \x8D
    /// - term Unicode: \u{008D}
    /// - term Hex: 0x8D
    /// - term Decimal: 141
    /// - note: Reverse of IND command
    case reverseIndex = 141

    /// Single Shift Two
    ///
    /// Temporarily shifts to alternate character set.
    /// - term Abbr: SS2
    /// - term ASCII: \x8E
    /// - term Unicode: \u{008E}
    /// - term Hex: 0x8E
    /// - term Decimal: 142
    /// - note: Single shift to G2 character set
    case singleShiftTwo = 142

    /// Single Shift Three
    ///
    /// Temporarily shifts to alternate character set.
    /// - term Abbr: SS3
    /// - term ASCII: \x8F
    /// - term Unicode: \u{008F}
    /// - term Hex: 0x8F
    /// - term Decimal: 143
    /// - note: Single shift to G3 character set
    case singleShiftThree = 143

    /// Device Control String
    ///
    /// Introduces a device control string.
    /// - term Abbr: DCS
    /// - term ASCII: \x90
    /// - term Unicode: \u{0090}
    /// - term Hex: 0x90
    /// - term Decimal: 144
    /// - note: Start of device control sequence
    case deviceControlString = 144

    /// Private Use One
    ///
    /// Reserved for private use.
    /// - term Abbr: PU1
    /// - term ASCII: \x91
    /// - term Unicode: \u{0091}
    /// - term Hex: 0x91
    /// - term Decimal: 145
    /// - note: Available for application-specific use
    case privateUseOne = 145

    /// Private Use Two
    ///
    /// Reserved for private use.
    /// - term Abbr: PU2
    /// - term ASCII: \x92
    /// - term Unicode: \u{0092}
    /// - term Hex: 0x92
    /// - term Decimal: 146
    /// - note: Available for application-specific use
    case privateUseTwo = 146

    /// Set Transmit State
    ///
    /// Sets transmission state.
    /// - term Abbr: STS
    /// - term ASCII: \x93
    /// - term Unicode: \u{0093}
    /// - term Hex: 0x93
    /// - term Decimal: 147
    /// - note: Controls transmission state
    case setTransmitState = 147

    /// Cancel Character
    ///
    /// Indicates that previous character is invalid.
    /// - term Abbr: CCH
    /// - term ASCII: \x94
    /// - term Unicode: \u{0094}
    /// - term Hex: 0x94
    /// - term Decimal: 148
    /// - note: Used to mark invalid characters
    case cancelCharacter = 148

    /// Message Waiting
    ///
    /// Indicates a message is waiting.
    /// - term Abbr: MW
    /// - term ASCII: \x95
    /// - term Unicode: \u{0095}
    /// - term Hex: 0x95
    /// - term Decimal: 149
    /// - note: Used in message handling protocols
    case messageWaiting = 149

    /// Start of Protected Area
    ///
    /// Marks start of protected text.
    /// - term Abbr: SPA
    /// - term ASCII: \x96
    /// - term Unicode: \u{0096}
    /// - term Hex: 0x96
    /// - term Decimal: 150
    /// - note: Begins a protected text region
    case startOfProtectedArea = 150

    /// End of Protected Area
    ///
    /// Marks end of protected text.
    /// - term Abbr: EPA
    /// - term ASCII: \x97
    /// - term Unicode: \u{0097}
    /// - term Hex: 0x97
    /// - term Decimal: 151
    /// - note: Ends a protected text region
    case endOfProtectedArea = 151

    /// Start of String
    ///
    /// Marks start of string.
    /// - term Abbr: SOS
    /// - term ASCII: \x98
    /// - term Unicode: \u{0098}
    /// - term Hex: 0x98
    /// - term Decimal: 152
    /// - note: Indicates beginning of string data
    case startOfString = 152

    /// Single Graphic Character Introducer
    ///
    /// Introduces a single graphic character.
    /// - term Abbr: SGC
    /// - term ASCII: \x99
    /// - term Unicode: \u{0099}
    /// - term Hex: 0x99
    /// - term Decimal: 153
    /// - note: Used for special graphic characters
    case singleGraphicCharacterIntroducer = 153

    /// Single Character Introducer
    ///
    /// Introduces a single character.
    /// - term Abbr: SCI
    /// - term ASCII: \x9A
    /// - term Unicode: \u{009A}
    /// - term Hex: 0x9A
    /// - term Decimal: 154
    /// - note: Introduces special single characters
    case singleCharacterIntroducer = 154

    /// Control Sequence Introducer
    ///
    /// Starts a control sequence.
    /// - term Abbr: CSI
    /// - term ASCII: \x9B
    /// - term Unicode: \u{009B}
    /// - term Hex: 0x9B
    /// - term Decimal: 155
    /// - note: Begins an ANSI escape sequence
    case controlSequenceIntroducer = 155

    /// String Terminator
    ///
    /// Terminates a string.
    /// - term Abbr: ST
    /// - term ASCII: \x9C
    /// - term Unicode: \u{009C}
    /// - term Hex: 0x9C
    /// - term Decimal: 156
    /// - note: Marks end of string data
    case stringTerminator = 156

    /// Operating System Command
    ///
    /// Operating system command.
    /// - term Abbr: OSC
    /// - term ASCII: \x9D
    /// - term Unicode: \u{009D}
    /// - term Hex: 0x9D
    /// - term Decimal: 157
    /// - note: Used for OS-specific commands
    case operatingSystemCommand = 157

    /// Privacy Message
    ///
    /// Privacy message control.
    /// - term Abbr: PM
    /// - term ASCII: \x9E
    /// - term Unicode: \u{009E}
    /// - term Hex: 0x9E
    /// - term Decimal: 158
    /// - note: Used for private message control
    case privacyMessage = 158

    /// Application Program Command
    ///
    /// Application specific command.
    /// - term Abbr: APC
    /// - term ASCII: \x9F
    /// - term Unicode: \u{009F}
    /// - term Hex: 0x9F
    /// - term Decimal: 159
    /// - note: Used for application-specific control
    case applicationProgramCommand = 159

    /// Returns whether this is a C0 control code
    public var isC0: Bool {
        rawValue <= 31 || rawValue == 127
    }

    /// Returns whether this is a C1 control code
    public var isC1: Bool {
        rawValue >= 128 && rawValue <= 159
    }
}
