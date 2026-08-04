// swift-tools-version:5.10.0

import PackageDescription
import Foundation

let package = Package(
    name: "swift-atomics",
    products: [
        .library(
            name: "Atomics",
            targets: ["Atomics_PrecompiledProduct"]
        )
    ],
    targets: [
        .target(
            name: "_AtomicsShims_Aggregation",
            dependencies: ["_AtomicsShims"],
            swiftSettings: [.define("SCIPIO_PRECOMPILED_BINARY_WRAPPER")]
        ),
        .binaryTarget(
            name: "_AtomicsShims",
            url: "https://github.com/swift-precompiled/swift-atomics/releases/download/1.3.1/_AtomicsShims-6b18d543dca59fd236428e232edfe8145a34db6edaa347446900e4f5aac478db.xcframework.zip",
            checksum: "6b18d543dca59fd236428e232edfe8145a34db6edaa347446900e4f5aac478db"
        ),
        .target(
            name: "Atomics_Aggregation",
            dependencies: ["Atomics"],
            swiftSettings: [.define("SCIPIO_PRECOMPILED_BINARY_WRAPPER")]
        ),
        .binaryTarget(
            name: "Atomics",
            url: "https://github.com/swift-precompiled/swift-atomics/releases/download/1.3.1/Atomics-501c7478a4622b670d4e00ad59d7904bee4cae80c9e728cca960f821d9c17087.xcframework.zip",
            checksum: "501c7478a4622b670d4e00ad59d7904bee4cae80c9e728cca960f821d9c17087"
        ),
        .target(
            name: "Atomics_PrecompiledProduct",
            dependencies: ["Atomics_Aggregation", "_AtomicsShims_Aggregation"]
        )
    ]
)