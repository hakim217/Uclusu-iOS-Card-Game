// swift-tools-version:5.5
import PackageDescription

let package = Package(
    name: "Uclusu",
    platforms: [
        .macOS(.v12),
        .iOS(.v15)
    ],
    products: [
        .executable(name: "Uclusu", targets: ["Uclusu"]),
    ],
    dependencies: [],
    targets: [
        .executableTarget(
            name: "Uclusu",
            dependencies: [],
            path: "Sources"
        ),
    ]
) 