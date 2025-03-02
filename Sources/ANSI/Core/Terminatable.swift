//
//  Terminatable.swift
//  ANSI
//
//  Created by Ihar Biaspalau on 28.02.25.
//


protocol Terminatable {
    var terminator: ANSISequence { get }
}