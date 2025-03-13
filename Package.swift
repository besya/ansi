// swift-tools-version: 6.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
  name: "ansi",
  products: [
    .library(name: "ANSI", targets: ["ANSI"])
  ],
  dependencies: [
    .package(url: "https://github.com/swiftconsole/ascii.git", from: "1.2.0"),
    .package(url: "https://github.com/apple/swift-algorithms", from: "1.2.0"),
  ],
  targets: [
    .target(
      name: "ANSI",
      dependencies: [
        .product(name: "ASCII", package: "ascii"),
        .product(name: "Algorithms", package: "swift-algorithms"),
      ]
    ),
    .testTarget(
      name: "ANSITests",
      dependencies: ["ANSI"]
    ),
  ]
)
