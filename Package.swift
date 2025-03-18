// swift-tools-version:5.3

import PackageDescription
import Foundation

let package = Package(
    name: "swift-atomics",
    products: [
        .library(
            name: "Atomics",
            targets: ["Atomics_Aggregation"]
        )
    ],
    targets: [
        .target(
            name: "Atomics_Aggregation",
            dependencies: [.target(name: "Atomics"), "_AtomicsShims_Aggregation"]
        ),
        .binaryTarget(
            name: "Atomics",
            url: "https://github.com/swift-precompiled/swift-atomics/releases/download/0.0.1/Atomics.xcframework.zip",
            checksum: "6c7c93c58e03fd4d6537dcccd5ada8f1626b4eace9c01344bbef8c136efd9a5f"
        ),
        .target(
            name: "_AtomicsShims_Aggregation",
            dependencies: [.target(name: "_AtomicsShims")]
        ),
        .binaryTarget(
            name: "_AtomicsShims",
            url: "https://github.com/swift-precompiled/swift-atomics/releases/download/0.0.1/_AtomicsShims.xcframework.zip",
            checksum: "0b9455c5e8bf761e3315777b2e49e5b88ff570e7f53e2af149b51cb9309c21fb"
        )
    ]
)