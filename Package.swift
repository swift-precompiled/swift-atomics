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
            url: "https://github.com/swift-precompiled/swift-atomics/releases/download/1.3.1-precompiled.2/_AtomicsShims-14131f4c3cdb730cc7c6c77b0b3d11c8614fda554e62fe4f3124cdc18a8fe4d5.xcframework.zip",
            checksum: "14131f4c3cdb730cc7c6c77b0b3d11c8614fda554e62fe4f3124cdc18a8fe4d5"
        ),
        .target(
            name: "Atomics_Aggregation",
            dependencies: ["Atomics", "_AtomicsShims_Aggregation"]
        ),
        .binaryTarget(
            name: "Atomics",
            url: "https://github.com/swift-precompiled/swift-atomics/releases/download/1.3.1-precompiled.2/Atomics-7b24ed75f74e723a0f54c9489957ea4fa6a1edbe9a87700700b8098d6e51cf7f.xcframework.zip",
            checksum: "7b24ed75f74e723a0f54c9489957ea4fa6a1edbe9a87700700b8098d6e51cf7f"
        )
    ]
)