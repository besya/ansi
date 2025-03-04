// swift-tools-version: 6.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

#if os(Windows)
let plugins: [Target.PluginUsage]? = nil
#else
let plugins: [Target.PluginUsage]? = [.plugin(name: "SwiftFormatPlugin")]
#endif

let target: Target = .target(
  name: "ANSI",
  dependencies: [
    .product(name: "ASCII", package: "ASCII"),
    .product(name: "Algorithms", package: "swift-algorithms"),
  ],
  plugins: plugins
)

let testTarget: Target = .testTarget(
  name: "ANSITests",
  dependencies: ["ANSI"]
)

#if os(Windows)
let targets: [Target] = [target, testTarget]
#else
let targets: [Target] = [
  target,
  testTarget,
  .plugin(
    name: "SwiftFormatPlugin",
    capability: .buildTool(),
    path: "Plugins/SwiftFormatPlugin",
    packageAccess: true
  ),
]
#endif

let package = Package(
  name: "ANSI",
  platforms: [.macOS(.v12)],
  products: [
    .library(name: "ANSI", targets: ["ANSI"])
  ],
  dependencies: [
    .package(url: "https://github.com/besya/ascii.git", from: "1.1.0"),
    .package(url: "https://github.com/apple/swift-algorithms", from: "1.2.0"),
  ],
  targets: targets
)
