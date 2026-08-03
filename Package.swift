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
            url: "https://github.com/swift-precompiled/swift-atomics/releases/download/1.3.1/_AtomicsShims-2938e9cdeeeca5c8dcc6e3da42f60813c1d02b8e8793d8ca5c95e191d87b2c23.xcframework.zip",
            checksum: "2938e9cdeeeca5c8dcc6e3da42f60813c1d02b8e8793d8ca5c95e191d87b2c23"
        ),
        .target(
            name: "Atomics_Aggregation",
            dependencies: ["Atomics", "_AtomicsShims_Aggregation"]
        ),
        .binaryTarget(
            name: "Atomics",
            url: "https://github.com/swift-precompiled/swift-atomics/releases/download/1.3.1/Atomics-e46ff58095c85797771581ac237fb1815d8020736498152b1e536e598bd31e62.xcframework.zip",
            checksum: "e46ff58095c85797771581ac237fb1815d8020736498152b1e536e598bd31e62"
        )
    ]
)