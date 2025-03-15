
# ANSI
[![Status](https://img.shields.io/badge/status-WIP-red)](https://github.com/besya/ansi)
[![License](https://img.shields.io/badge/License-Apache%202.0-blue.svg)](https://www.apache.org/licenses/LICENSE-2.0)

**NOTICE: This library is under active development and is not ready for use in production or any other environment. Use at your own risk.**

Current version: 0.0.1-dev (unstable, experimental)

A type-safe Swift representation of ANSI sequences with comprehensive formatting options and convenient utilities.

## Features

- 🚀 Compile-time safety 
- 💪 Type-safe enums
- ✨ Pure Swift implementation

## Installation

### Swift Package Manager

Add the following to your `Package.swift` file:

```swift
let package = Package(
    // name, platforms, products, etc.
    dependencies: [
        // other dependencies
        .package(url: "https://github.com/swiftconsole/ansi.git", branch: "main"),
    ],
    targets: [
        .target(name: "<library>", dependencies: [
            // other dependencies
            .product(name: "ANSI", package: "ansi"),
        ]),
        // other targets
    ]
)
```

## Usage

### Import

```swift
import ANSI
```

### ANSISequence and Sequential

ANSISequence is a wrapper for list of ASCII from ASCII library 

```swift
let boldSequence: ANSISequence = [.escape, .leftBracket, .digit1, .m]
boldSequence.ascii == [ASCII.escape, .leftBracket, .digit1, .m] // true
boldSequence.ascii.map(\.unicode.description).joined() // \x1b[1m
boldSequence.string() // \x1b[1m
```

### Escape Sequences

```swift
let sequence: ANSISequence = EscapeSequence.singleShiftTwo.sequence
```

### Control Sequences

```swift
let clearScreen: EscapeSequence = .controlSequence(.eraseInDisplay(.entireScreen))
let clearScreenSequence: ANSISequence = clearScreen.sequence
print(clearScreenSequence.string())
```

### Select Graphic Rendition

Prints _**Hello world**_
```swift
let boldAndItalic: String = EscapeSequence.controlSequence(.selectGraphicRendition([.bold, .italic])).sequence.string()
print("\(boldAndItalic)Hello world")
```

#### Using colors

```swift
let hotPinkEscapeSequence: EscapeSequence = .controlSequence(
    .selectGraphicRendition([.foregroundColor(.bit8(212))])
)

let hotPink = hotPinkEscapeSequence.sequence.string()

print("\(hotPink)Pink world")
```

### Inspection

Inspecting generated sequences can be a really useful feature in some scenarios. 

```swift
let hotPinkEscapeSequence: EscapeSequence = .controlSequence(
    .selectGraphicRendition([.foregroundColor(.bit8(212))])
)

print(hotPinkEscapeSequence.inspect(as: .escaped)) 
// \x1b[38;5;212m

print(hotPinkEscapeSequence.inspectList(as: .escaped)) 
// ["\\x1b", "[", "3", "8", ";", "5", ";", "2", "1", "2", "m"]

print(hotPinkEscapeSequence.inspectList(as: .name)) 
// ["escape", "leftBracket", "digit3", "digit8", "semicolon", "digit5", "semicolon", "digit2", "digit1", "digit2", "m"]
```

```swift
let myAwesomeSGR: [SelectGraphicRendition] = [
    .bold,
    .italic,
    .foregroundColor(.black),
    .backgroundColor(.white)
]

let myAwesomeStyleSequence: EscapeSequence = .controlSequence(
    .selectGraphicRendition(myAwesomeSGR)
)

let myAwesomeStyle = myAwesomeStyleSequence.sequence.string()

print("\(myAwesomeStyle)Hello world")
print(myAwesomeStyleSequence.inspect(as: .escaped))
// \x1b[1;3;30;47m
print(myAwesomeStyleSequence.inspectList(as: .escaped))
// ["\\x1b", "[", "1", ";", "3", ";", "3", "0", ";", "4", "7", "m"]
```

## Why ANSI?

- **Type Safety**: Prevent invalid ANSI sequences at compile time
- **Convenience**: Rich set of utility methods and properties
- **Clarity**: Descriptive enum cases instead of raw values
- **Versatility**: Multiple representation formats for inspections

## Requirements

- Swift 6.0+
- iOS 13.0+ / macOS 10.15+ / tvOS 13.0+ / watchOS 6.0+

## Contributing

Contributions are welcome! Please read the [contributing guide](CONTRIBUTING.md) before submitting a pull request.

## License

Licensed under the Apache License v2.0. See [LICENSE.txt](LICENSE.txt) for details.
