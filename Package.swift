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
            url: "https://github.com/swift-precompiled/swift-atomics/releases/download/1.3.1/_AtomicsShims-fe1082fa4483ab21b396e8c0be1c2c151ce2d2e5b977f1062b937fc01d51df28.xcframework.zip",
            checksum: "fe1082fa4483ab21b396e8c0be1c2c151ce2d2e5b977f1062b937fc01d51df28"
        ),
        .target(
            name: "Atomics_Aggregation",
            dependencies: ["Atomics", "_AtomicsShims_Aggregation"]
        ),
        .binaryTarget(
            name: "Atomics",
            url: "https://github.com/swift-precompiled/swift-atomics/releases/download/1.3.1/Atomics-236a69afe51f6632c413ae3a888e2a62174636106cd73508eea40d4a4e907330.xcframework.zip",
            checksum: "236a69afe51f6632c413ae3a888e2a62174636106cd73508eea40d4a4e907330"
        )
    ]
)