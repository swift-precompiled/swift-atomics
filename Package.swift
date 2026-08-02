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
            url: "https://github.com/swift-precompiled/swift-atomics/releases/download/1.3.1/_AtomicsShims-f58759cda6cac64de777713fa7345b3b9bdf58fa38aaa5a336b69116ad361131.xcframework.zip",
            checksum: "f58759cda6cac64de777713fa7345b3b9bdf58fa38aaa5a336b69116ad361131"
        ),
        .target(
            name: "Atomics_Aggregation",
            dependencies: ["Atomics", "_AtomicsShims_Aggregation"]
        ),
        .binaryTarget(
            name: "Atomics",
            url: "https://github.com/swift-precompiled/swift-atomics/releases/download/1.3.1/Atomics-65bc7d800d89a25d5c68b8b91715a294970c58cb710a7155a6ab95259533e42d.xcframework.zip",
            checksum: "65bc7d800d89a25d5c68b8b91715a294970c58cb710a7155a6ab95259533e42d"
        )
    ]
)