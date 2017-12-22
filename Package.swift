// swift-tools-version:4.0

import PackageDescription

let package = Package(
    name: "Statistics",
    products: [
        .library(name: "Statistics", targets: ["Statistics"])
    ],
    dependencies: [
    ],
    targets: [
        .target(name: "Statistics", dependencies: []),
        .testTarget(name: "StatisticsTests", dependencies: ["Statistics"])
    ]
)
