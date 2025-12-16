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
            url: "https://github.com/swift-precompiled/swift-atomics/releases/download/1.3.0/_AtomicsShims.xcframework.zip",
            checksum: "25f105e83425e7de724b460f26c571501cfb6625532ae22d6712fa021e0aa7eb"
        ),
        .target(
            name: "Atomics_Aggregation",
            dependencies: ["Atomics", "_AtomicsShims_Aggregation"]
        ),
        .binaryTarget(
            name: "Atomics",
            url: "https://github.com/swift-precompiled/swift-atomics/releases/download/1.3.0/Atomics.xcframework.zip",
            checksum: "c51d9d36fd9c19a6d58fbaf4d18e1a81cac235e1c743771ad5d8755a63a2b192"
        )
    ]
)