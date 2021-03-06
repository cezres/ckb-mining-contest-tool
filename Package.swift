// swift-tools-version:5.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "mining-contest-tool",
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
        .package(url: "https://github.com/nervosnetwork/ckb-sdk-swift", from: "0.13.0")
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages which this package depends on.
        .target(
            name: "mining-contest-tool",
            dependencies: [
                "CKB"
            ]),
        .testTarget(
            name: "mining-contest-toolTests",
            dependencies: ["mining-contest-tool"]),
    ]
)
