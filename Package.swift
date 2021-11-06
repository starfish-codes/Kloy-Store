// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Kloy-Store",
    dependencies: [
        .package(url: "https://github.com/starfish-codes/Kloy-Core.git", branch: "main"),
    ],
    targets: [
        .executableTarget(
            name: "Kloy-Store",
            dependencies: [
                .product(name: "Core", package: "Kloy-Core")
            ]),
        .testTarget(
            name: "Kloy-StoreTests",
            dependencies: ["Kloy-Store"]),
    ]
)
