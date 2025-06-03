// swift-tools-version: 5.8
// Swift iOS App Package
// Author: Gabriel Demetrios Lafis

import PackageDescription

let package = Package(
    name: "SwiftApp",
    platforms: [
        .iOS(.v15),
        .macOS(.v12)
    ],
    products: [
        .library(
            name: "SwiftApp",
            targets: ["SwiftApp"]),
    ],
    dependencies: [],
    targets: [
        .target(
            name: "SwiftApp",
            dependencies: []),
        .testTarget(
            name: "SwiftAppTests",
            dependencies: ["SwiftApp"]),
    ]
)
