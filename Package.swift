// swift-tools-version:5.2
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "ikemen",
    products: [.library(name: "Ikemen", targets: ["Ikemen"])],
    dependencies: [
        .package(url: "https://github.com/Quick/Quick", .upToNextMajor(from: "4.0.0")),
        .package(url: "https://github.com/Quick/Nimble", .upToNextMajor(from: "9.0.0")),
    ],
    targets: [
        .target(
            name: "Ikemen",
            dependencies: [],
            path: "Pod/Classes"),
        .testTarget(
            name: "IkemenTests",
            dependencies: ["Ikemen", "Quick", "Nimble"],
            path: "Example/Tests"),
    ]
)
