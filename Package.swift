// swift-tools-version: 5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "RadixUI",
    platforms: [
        .iOS(.v15),
        .macOS(.v12),
        .tvOS(.v15)
    ],
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "RadixUI",
            targets: ["RadixUI"]),
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "RadixUI",
            resources: [
                .process("RadixColors/RadixColors.xcassets"),
                .process("RadixIcons/RadixIcons.xcassets")
            ]
        ),
        .testTarget(
            name: "RadixUI-Tests",
            dependencies: ["RadixUI"]),
    ]
)
