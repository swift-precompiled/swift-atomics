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
            url: "https://github.com/swift-precompiled/swift-atomics/releases/download/1.3.1/_AtomicsShims-e38ff6af5aac957de0cc1c0fab80e67b611fad37e43a17802649b3c3f1fcb5a0.xcframework.zip",
            checksum: "e38ff6af5aac957de0cc1c0fab80e67b611fad37e43a17802649b3c3f1fcb5a0"
        ),
        .target(
            name: "Atomics_Aggregation",
            dependencies: ["Atomics", "_AtomicsShims_Aggregation"]
        ),
        .binaryTarget(
            name: "Atomics",
            url: "https://github.com/swift-precompiled/swift-atomics/releases/download/1.3.1/Atomics-d25d85a176907b2f60619004df8d8cb9c131efb8dbb55b362864e30e90b1c7cf.xcframework.zip",
            checksum: "d25d85a176907b2f60619004df8d8cb9c131efb8dbb55b362864e30e90b1c7cf"
        )
    ]
)