//
//  ANSISequence.swift
//  ANSI
//
//  Created by Ihar Biaspalau on 28.02.25.
//

import ASCII

public struct ANSISequence: ExpressibleByArrayLiteral, ExpressibleByIntegerLiteral, Equatable {
    let sequence: [ASCII]

    public init(_ sequence: [ASCII]) {
        self.sequence = sequence
    }

    public init(_ sequence: ASCII...) {
        self.init(sequence)
    }

    public init(_ ascii: ASCII) {
        self.init([ascii])
    }

    public init(_ int: Int) {
        self.sequence = String(int).map { ASCII($0)! }
    }

    public init(_ uint: UInt8) {
        self.sequence = String(uint).map { ASCII($0)! }
    }

    // POTENTIAL ERROR DECODING STRING
    public init(_ string: String) {
        self.sequence = string.map { ASCII($0)! }
    }

    public init(arrayLiteral elements: ASCII...) {
        self.sequence = elements
    }

    public init(_ elements: Int...) {
        self.sequence = elements.map(String.init).flatMap {
            $0.map { ASCII($0)! }
        }
    }

    public init(integerLiteral element: Int) {
        self.init(element)
    }
}

extension ANSISequence {
    public var ascii: [ASCII] { sequence }
}

extension ANSISequence {
    static func + (lhs: Self, rhs: Self) -> Self {
        Self(lhs.sequence + rhs.sequence)
    }
}

extension ANSISequence {
    public func string(_ type: InspectType = .unicode) -> String {
        sequence.map { $0.inspect(type) }.joined()
    }
}
