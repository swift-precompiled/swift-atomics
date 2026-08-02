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
            url: "https://github.com/swift-precompiled/swift-atomics/releases/download/1.3.1/_AtomicsShims-e433a686c778dde242be5c4f914dcb2e9b0b70494c25d18787ca8458e9f0d646.xcframework.zip",
            checksum: "e433a686c778dde242be5c4f914dcb2e9b0b70494c25d18787ca8458e9f0d646"
        ),
        .target(
            name: "Atomics_Aggregation",
            dependencies: ["Atomics", "_AtomicsShims_Aggregation"]
        ),
        .binaryTarget(
            name: "Atomics",
            url: "https://github.com/swift-precompiled/swift-atomics/releases/download/1.3.1/Atomics-2d70feea3490daca49605bbcc5804432b7fee15884ac9e10a33f127f01ffd92e.xcframework.zip",
            checksum: "2d70feea3490daca49605bbcc5804432b7fee15884ac9e10a33f127f01ffd92e"
        )
    ]
)