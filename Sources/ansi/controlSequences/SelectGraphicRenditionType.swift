//
//  SelectGraphicRenditionType.swift
//  ansi
//
//  Created by Ihar Biaspalau on 28.01.25.
//


public enum SelectGraphicRenditionType: Int {
    var byte: UInt8 { UInt8(rawValue) }
    
    /// Returns the string representation
    var string: String { String(rawValue) }


    /// Reset all attributes
    /// - term Code: CSI 0 m
    /// - term Example: \u{001B}[0m
    case reset = 0

    /// Bold or increased intensity
    /// - term Code: CSI 1 m
    /// - term Example: \u{001B}[1m
    case bold = 1

    /// Dim or decreased intensity
    /// - term Code: CSI 2 m
    /// - term Example: \u{001B}[2m
    case dim = 2

    /// Italic
    /// - term Code: CSI 3 m
    /// - term Example: \u{001B}[3m
    case italic = 3

    /// Underline
    /// - term Code: CSI 4 m
    /// - term Example: \u{001B}[4m
    case underline = 4

    /// Slow Blink
    /// - term Code: CSI 5 m
    /// - term Example: \u{001B}[5m
    case slowBlink = 5

    /// Rapid Blink
    /// - term Code: CSI 6 m
    /// - term Example: \u{001B}[6m
    case rapidBlink = 6

    /// Reverse video (swap foreground and background)
    /// - term Code: CSI 7 m
    /// - term Example: \u{001B}[7m
    case reverse = 7

    /// Conceal (hide)
    /// - term Code: CSI 8 m
    /// - term Example: \u{001B}[8m
    case conceal = 8

    /// Crossed-out
    /// - term Code: CSI 9 m
    /// - term Example: \u{001B}[9m
    case crossedOut = 9

    /// Default font
    /// - term Code: CSI 10 m
    /// - term Example: \u{001B}[10m
    case defaultFont = 10

    /// Alternative font 1-9
    /// - term Code: CSI 11-19 m
    /// - term Example: \u{001B}[11m
    case alternativeFont1 = 11
    case alternativeFont2 = 12
    case alternativeFont3 = 13
    case alternativeFont4 = 14
    case alternativeFont5 = 15
    case alternativeFont6 = 16
    case alternativeFont7 = 17
    case alternativeFont8 = 18
    case alternativeFont9 = 19

    /// Fraktur (Gothic)
    /// - term Code: CSI 20 m
    /// - term Example: \u{001B}[20m
    case fraktur = 20

    /// Double underline
    /// - term Code: CSI 21 m
    /// - term Example: \u{001B}[21m
    case doubleUnderline = 21

    /// Normal intensity (not bold and not dim)
    /// - term Code: CSI 22 m
    /// - term Example: \u{001B}[22m
    case normalIntensity = 22

    /// Not italic, not Fraktur
    /// - term Code: CSI 23 m
    /// - term Example: \u{001B}[23m
    case notItalic = 23

    /// Not underlined
    /// - term Code: CSI 24 m
    /// - term Example: \u{001B}[24m
    case notUnderlined = 24

    /// Not blinking
    /// - term Code: CSI 25 m
    /// - term Example: \u{001B}[25m
    case notBlinking = 25

    /// Proportional spacing
    /// - term Code: CSI 26 m
    /// - term Example: \u{001B}[26m
    case proportionalSpacing = 26

    /// Not reversed
    /// - term Code: CSI 27 m
    /// - term Example: \u{001B}[27m
    case notReversed = 27

    /// Reveal (not concealed)
    /// - term Code: CSI 28 m
    /// - term Example: \u{001B}[28m
    case reveal = 28

    /// Not crossed out
    /// - term Code: CSI 29 m
    /// - term Example: \u{001B}[29m
    case notCrossedOut = 29

    // Foreground colors (30-37)
    /// Black foreground
    /// - term Code: CSI 30 m
    /// - term Example: \u{001B}[30m
    case blackForeground = 30

    /// Red foreground
    /// - term Code: CSI 31 m
    /// - term Example: \u{001B}[31m
    case redForeground = 31

    /// Green foreground
    /// - term Code: CSI 32 m
    /// - term Example: \u{001B}[32m
    case greenForeground = 32

    /// Yellow foreground
    /// - term Code: CSI 33 m
    /// - term Example: \u{001B}[33m
    case yellowForeground = 33

    /// Blue foreground
    /// - term Code: CSI 34 m
    /// - term Example: \u{001B}[34m
    case blueForeground = 34

    /// Magenta foreground
    /// - term Code: CSI 35 m
    /// - term Example: \u{001B}[35m
    case magentaForeground = 35

    /// Cyan foreground
    /// - term Code: CSI 36 m
    /// - term Example: \u{001B}[36m
    case cyanForeground = 36

    /// White foreground
    /// - term Code: CSI 37 m
    /// - term Example: \u{001B}[37m
    case whiteForeground = 37

    /// Set foreground color
    /// - term Code: CSI 38 m
    /// - term Example: \u{001B}[38;5;1m or \u{001B}[38;2;255;0;0m
    /// - note: Use with `5;n` for 256 colors or `2;r;g;b` for RGB colors
    case setForegroundColor = 38

    /// Default foreground color
    /// - term Code: CSI 39 m
    /// - term Example: \u{001B}[39m
    case defaultForeground = 39

    // Background colors (40-47)
    /// Black background
    /// - term Code: CSI 40 m
    /// - term Example: \u{001B}[40m
    case blackBackground = 40

    /// Red background
    /// - term Code: CSI 41 m
    /// - term Example: \u{001B}[41m
    case redBackground = 41

    /// Green background
    /// - term Code: CSI 42 m
    /// - term Example: \u{001B}[42m
    case greenBackground = 42

    /// Yellow background
    /// - term Code: CSI 43 m
    /// - term Example: \u{001B}[43m
    case yellowBackground = 43

    /// Blue background
    /// - term Code: CSI 44 m
    /// - term Example: \u{001B}[44m
    case blueBackground = 44

    /// Magenta background
    /// - term Code: CSI 45 m
    /// - term Example: \u{001B}[45m
    case magentaBackground = 45

    /// Cyan background
    /// - term Code: CSI 46 m
    /// - term Example: \u{001B}[46m
    case cyanBackground = 46

    /// White background
    /// - term Code: CSI 47 m
    /// - term Example: \u{001B}[47m
    case whiteBackground = 47

    /// Set background color
    /// - term Code: CSI 48 m
    /// - term Example: \u{001B}[48;5;1m or \u{001B}[48;2;255;0;0m
    /// - note: Use with `5;n` for 256 colors or `2;r;g;b` for RGB colors
    case setBackgroundColor = 48

    /// Default background color
    /// - term Code: CSI 49 m
    /// - term Example: \u{001B}[49m
    case defaultBackground = 49

    // Typographic effects (50-59)
    /// Disable proportional spacing
    /// - term Code: CSI 50 m
    /// - term Example: \u{001B}[50m
    case disableProportionalSpacing = 50

    /// Framed
    /// - term Code: CSI 51 m
    /// - term Example: \u{001B}[51m
    case framed = 51

    /// Encircled
    /// - term Code: CSI 52 m
    /// - term Example: \u{001B}[52m
    case encircled = 52

    /// Overlined
    /// - term Code: CSI 53 m
    /// - term Example: \u{001B}[53m
    case overlined = 53

    /// Not framed or encircled
    /// - term Code: CSI 54 m
    /// - term Example: \u{001B}[54m
    case notFramedOrEncircled = 54

    /// Not overlined
    /// - term Code: CSI 55 m
    /// - term Example: \u{001B}[55m
    case notOverlined = 55

    // Reserved codes (56-57)
    case reserved56 = 56
    case reserved57 = 57

    /// Set underline color
    /// - term Code: CSI 58 m
    /// - term Example: \u{001B}[58m
    case setUnderlineColor = 58

    /// Default underline color
    /// - term Code: CSI 59 m
    /// - term Example: \u{001B}[59m
    case defaultUnderlineColor = 59

    // Ideogram attributes (60-65)
    /// Ideogram underline or right side line
    /// - term Code: CSI 60 m
    /// - term Example: \u{001B}[60m
    case ideogramUnderline = 60

    /// Ideogram double underline or double line on right side
    /// - term Code: CSI 61 m
    /// - term Example: \u{001B}[61m
    case ideogramDoubleUnderline = 61

    /// Ideogram overline or left side line
    /// - term Code: CSI 62 m
    /// - term Example: \u{001B}[62m
    case ideogramOverline = 62

    /// Ideogram double overline or double line on left side
    /// - term Code: CSI 63 m
    /// - term Example: \u{001B}[63m
    case ideogramDoubleOverline = 63

    /// Ideogram stress marking
    /// - term Code: CSI 64 m
    /// - term Example: \u{001B}[64m
    case ideogramStressMarking = 64

    /// No ideogram attributes
    /// - term Code: CSI 65 m
    /// - term Example: \u{001B}[65m
    case noIdeogramAttributes = 65

    // Superscript/Subscript (73-75)
    /// Superscript
    /// - term Code: CSI 73 m
    /// - term Example: \u{001B}[73m
    case superscript = 73

    /// Subscript
    /// - term Code: CSI 74 m
    /// - term Example: \u{001B}[74m
    case sub_script = 74

    /// Neither superscript nor subscript
    /// - term Code: CSI 75 m
    /// - term Example: \u{001B}[75m
    case neitherSuperscriptNorSubscript = 75

    // Bright foreground colors (90-97)
    /// Bright black foreground
    /// - term Code: CSI 90 m
    /// - term Example: \u{001B}[90m
    case brightBlackForeground = 90

    /// Bright red foreground
    /// - term Code: CSI 91 m
    /// - term Example: \u{001B}[91m
    case brightRedForeground = 91

    /// Bright green foreground
    /// - term Code: CSI 92 m
    /// - term Example: \u{001B}[92m
    case brightGreenForeground = 92

    /// Bright yellow foreground
    /// - term Code: CSI 93 m
    /// - term Example: \u{001B}[93m
    case brightYellowForeground = 93

    /// Bright blue foreground
    /// - term Code: CSI 94 m
    /// - term Example: \u{001B}[94m
    case brightBlueForeground = 94

    /// Bright magenta foreground
    /// - term Code: CSI 95 m
    /// - term Example: \u{001B}[95m
    case brightMagentaForeground = 95

    /// Bright cyan foreground
    /// - term Code: CSI 96 m
    /// - term Example: \u{001B}[96m
    case brightCyanForeground = 96

    /// Bright white foreground
    /// - term Code: CSI 97 m
    /// - term Example: \u{001B}[97m
    case brightWhiteForeground = 97

    // Bright background colors (100-107)
    /// Bright black background
    /// - term Code: CSI 100 m
    /// - term Example: \u{001B}[100m
    case brightBlackBackground = 100

    /// Bright red background
    /// - term Code: CSI 101 m
    /// - term Example: \u{001B}[101m
    case brightRedBackground = 101

    /// Bright green background
    /// - term Code: CSI 102 m
    /// - term Example: \u{001B}[102m
    case brightGreenBackground = 102

    /// Bright yellow background
    /// - term Code: CSI 103 m
    /// - term Example: \u{001B}[103m
    case brightYellowBackground = 103

    /// Bright blue background
    /// - term Code: CSI 104 m
    /// - term Example: \u{001B}[104m
    case brightBlueBackground = 104

    /// Bright magenta background
    /// - term Code: CSI 105 m
    /// - term Example: \u{001B}[105m
    case brightMagentaBackground = 105

    /// Bright cyan background
    /// - term Code: CSI 106 m
    /// - term Example: \u{001B}[106m
    case brightCyanBackground = 106

    /// Bright white background
    /// - term Code: CSI 107 m
    /// - term Example: \u{001B}[107m
    case brightWhiteBackground = 107
}
