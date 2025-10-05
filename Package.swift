// swift-tools-version: 6.2
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
  name: "soyokaze-api",
  platforms: [.iOS(.v18), .macOS(.v15)],
  products: [
    .library(
      name: "SoyokazeAPI",
      targets: ["SoyokazeAPI"]
    )
  ],
  dependencies: [
    .package(url: "https://github.com/nnabeyang/swift-atproto", exact: "0.29.2")
  ],
  targets: [
    .target(
      name: "SoyokazeAPI",
      dependencies: [
        .product(name: "SwiftAtproto", package: "swift-atproto")
      ]
    )
  ]
)
