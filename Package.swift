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
            url: "https://github.com/swift-precompiled/swift-atomics/releases/download/1.3.1/_AtomicsShims-12382f6a51abc00012a5463c40424d1461a72418f81fd09bfdc4e321d71e3518.xcframework.zip",
            checksum: "12382f6a51abc00012a5463c40424d1461a72418f81fd09bfdc4e321d71e3518"
        ),
        .target(
            name: "Atomics_Aggregation",
            dependencies: ["Atomics", "_AtomicsShims_Aggregation"]
        ),
        .binaryTarget(
            name: "Atomics",
            url: "https://github.com/swift-precompiled/swift-atomics/releases/download/1.3.1/Atomics-9517989127df46c4335c48b301c24cabde30795b3c59cb32935e9a9fb3b6eecb.xcframework.zip",
            checksum: "9517989127df46c4335c48b301c24cabde30795b3c59cb32935e9a9fb3b6eecb"
        )
    ]
)