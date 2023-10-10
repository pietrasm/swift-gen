// swift-tools-version:5.1
import Foundation
import PackageDescription

let package = Package(
  name: "swift-gen",
  platforms: [
    .iOS(.v13),
    .macOS(.v10_15),
    .tvOS(.v13),
    .watchOS(.v6),
  ],
  products: [
    .library(name: "Gen", targets: ["Gen"])
  ],
  dependencies: [
    .package(url: "https://github.com/pointfreeco/swift-custom-dump", from: "1.0.0"),
  ],
  targets: [
    .target(
      name: "Gen",
      dependencies: [.product(name: "CustomDump", package: "swift-custom-dump")]
    ),
    .testTarget(name: "GenTests", dependencies: ["Gen"]),
  ]
)
