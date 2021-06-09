// swift-tools-version:5.1
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "SwiftLeePackage",
    platforms: [
        // Only add support for iOS 11 and up.
        .iOS(.v11)
    ],
    products: [
        .library(name: "SwiftLeePackage", targets: ["SwiftLeePackage"])
    ],
    dependencies: [
        /// Define the Mocker dependency:
        .package(url: "https://github.com/test93188/tslibXCframwork.git", from: "1.0.0")
    ],
    targets: [
        .target(name: "SwiftLeePackage", dependencies: []),
        /// Add it to your test target in the dependencies array:
        .testTarget(name: "SwiftLeePackageTests", dependencies: ["SwiftLeePackage", "Mocker"])
    ]
)
