// swift-tools-version:4.2

import PackageDescription

let package = Package(
    name: "spmtest",
    products: [
        .executable(name: "spmtest", targets: ["spmtest"])
    ],
    dependencies: [
        .Package(url: "https://github.com/socketio/socket.io-client-swift", majorVersion: 8)
    ],
    targets: [
        .target(name: "spmtest", dependencies: ["SocketIO"], path: "./Sources")
    ]
)
