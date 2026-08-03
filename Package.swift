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
            url: "https://github.com/swift-precompiled/swift-atomics/releases/download/1.3.1-precompiled.1/_AtomicsShims-bd683447d2973bd06e976e22021962cf59cc980b0b4250ae924b454213077f3b.xcframework.zip",
            checksum: "bd683447d2973bd06e976e22021962cf59cc980b0b4250ae924b454213077f3b"
        ),
        .target(
            name: "Atomics_Aggregation",
            dependencies: ["Atomics", "_AtomicsShims_Aggregation"]
        ),
        .binaryTarget(
            name: "Atomics",
            url: "https://github.com/swift-precompiled/swift-atomics/releases/download/1.3.1-precompiled.1/Atomics-ee83700ba70cbfe2a14a01b011f4e8186ed2e9886cb1aa088dfb7d6335b697de.xcframework.zip",
            checksum: "ee83700ba70cbfe2a14a01b011f4e8186ed2e9886cb1aa088dfb7d6335b697de"
        )
    ]
)