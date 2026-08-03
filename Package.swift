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
            url: "https://github.com/swift-precompiled/swift-atomics/releases/download/1.3.1/_AtomicsShims-4096f9493237451bcd3e454d361c890272b4e588ceed6e49204a0573b2f07e04.xcframework.zip",
            checksum: "4096f9493237451bcd3e454d361c890272b4e588ceed6e49204a0573b2f07e04"
        ),
        .target(
            name: "Atomics_Aggregation",
            dependencies: ["Atomics", "_AtomicsShims_Aggregation"]
        ),
        .binaryTarget(
            name: "Atomics",
            url: "https://github.com/swift-precompiled/swift-atomics/releases/download/1.3.1/Atomics-ce0c2f5753588a7e613289d94f20f457db8383c8c1f9c067ebb3a26ca77dd17f.xcframework.zip",
            checksum: "ce0c2f5753588a7e613289d94f20f457db8383c8c1f9c067ebb3a26ca77dd17f"
        )
    ]
)