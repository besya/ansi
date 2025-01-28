//
//  ControlCode+Representations.swift
//  ansi
//
//  Created by Ihar Biaspalau on 28.01.25.
//


extension ControlCode {
    public func asString(_ representation: ControlCodeRepresentation = .unicodeScalar) -> String {
        switch representation {
        case .abbreviation: controlNotation!
        case .ascii: ascii
        case .decimal: String(rawValue)
        case .hex: hex
        case .unicode: unicode
        case .unicodeScalar: string
        }
    }
    
    /// Returns the Unicode scalar representation
    public var unicodeScalar: UnicodeScalar? {
        return UnicodeScalar(rawValue)
    }

    /// Returns the string representation
    public var string: String {
        guard let scalar = unicodeScalar else { return "" }
        return String(scalar)
    }

    /// Returns the hexadecimal representation (e.g., "0x00")
    public var hex: String {
        String(format: "0x%02X", rawValue)
    }

    /// Returns the ASCII escape sequence (e.g., "\x00")
    public var ascii: String {
        String(format: "\\x%02x", rawValue)
    }

    /// Returns the Unicode escape sequence (e.g., "\u{0000}")
    public var unicode: String {
        String(format: "\\u{%04X}", rawValue)
    }

    /// Returns the control notation for C0 codes (e.g., "^@", "^A")
    public var controlNotation: String? {
        guard isC0 else { return nil }
        switch self {
        case .null:
            return "^@"
        case .delete:
            return "^?"
        default:
            return "^" + String(UnicodeScalar(rawValue + 64)!)
        }
    }

    /// Returns the abbreviated name (e.g., "NUL", "SOH", "PAD", "HOP")
    public var abbreviation: String {
        switch self {
        // C0 codes
        case .null: return "NUL"
        case .startOfHeading: return "SOH"
        case .startOfText: return "STX"
        case .endOfText: return "ETX"
        case .endOfTransmission: return "EOT"
        case .enquiry: return "ENQ"
        case .acknowledge: return "ACK"
        case .bell: return "BEL"
        case .backspace: return "BS"
        case .horizontalTab: return "HT"
        case .lineFeed: return "LF"
        case .verticalTab: return "VT"
        case .formFeed: return "FF"
        case .carriageReturn: return "CR"
        case .shiftOut: return "SO"
        case .shiftIn: return "SI"
        case .dataLinkEscape: return "DLE"
        case .deviceControl1: return "DC1"
        case .deviceControl2: return "DC2"
        case .deviceControl3: return "DC3"
        case .deviceControl4: return "DC4"
        case .negativeAcknowledge: return "NAK"
        case .synchronousIdle: return "SYN"
        case .endOfTransmissionBlock: return "ETB"
        case .cancel: return "CAN"
        case .endOfMedium: return "EM"
        case .substitute: return "SUB"
        case .escape: return "ESC"
        case .fileSeparator: return "FS"
        case .groupSeparator: return "GS"
        case .recordSeparator: return "RS"
        case .unitSeparator: return "US"
        case .delete: return "DEL"
        // C1 codes
        case .paddingCharacter: return "PAD"
        case .highOctetPreset: return "HOP"
        case .breakPermittedHere: return "BPH"
        case .noBreakHere: return "NBH"
        case .index: return "IND"
        case .nextLine: return "NEL"
        case .startOfSelectedArea: return "SSA"
        case .endOfSelectedArea: return "ESA"
        case .horizontalTabulationSet: return "HTS"
        case .horizontalTabulationWithJustification: return "HTJ"
        case .verticalTabulationSet: return "VTS"
        case .partialLineDown: return "PLD"
        case .partialLineUp: return "PLU"
        case .reverseIndex: return "RI"
        case .singleShiftTwo: return "SS2"
        case .singleShiftThree: return "SS3"
        case .deviceControlString: return "DCS"
        case .privateUseOne: return "PU1"
        case .privateUseTwo: return "PU2"
        case .setTransmitState: return "STS"
        case .cancelCharacter: return "CCH"
        case .messageWaiting: return "MW"
        case .startOfProtectedArea: return "SPA"
        case .endOfProtectedArea: return "EPA"
        case .startOfString: return "SOS"
        case .singleGraphicCharacterIntroducer: return "SGC"
        case .singleCharacterIntroducer: return "SCI"
        case .controlSequenceIntroducer: return "CSI"
        case .stringTerminator: return "ST"
        case .operatingSystemCommand: return "OSC"
        case .privacyMessage: return "PM"
        case .applicationProgramCommand: return "APC"
        }
    }
}
