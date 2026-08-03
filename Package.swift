// swift-tools-version:5.10.0

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
            name: "_AtomicsShims_Aggregation",
            dependencies: ["_AtomicsShims"]
        ),
        .binaryTarget(
            name: "_AtomicsShims",
            url: "https://github.com/swift-precompiled/swift-atomics/releases/download/1.3.1/_AtomicsShims-565d02e5e9b95c756e21421520b221e5706eb3273e03b0eb584797a83d9d0fdc.xcframework.zip",
            checksum: "565d02e5e9b95c756e21421520b221e5706eb3273e03b0eb584797a83d9d0fdc"
        ),
        .target(
            name: "Atomics_Aggregation",
            dependencies: ["Atomics", "_AtomicsShims_Aggregation"]
        ),
        .binaryTarget(
            name: "Atomics",
            url: "https://github.com/swift-precompiled/swift-atomics/releases/download/1.3.1/Atomics-6e03c5dcf5841803fc01294ea337eed28e92c0954719a7fb3b5c370bacc2dcb0.xcframework.zip",
            checksum: "6e03c5dcf5841803fc01294ea337eed28e92c0954719a7fb3b5c370bacc2dcb0"
        )
    ]
)