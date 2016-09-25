import PackageDescription

let package = Package(
    name: "spmtest",
    dependencies: [
        .Package(url: "https://github.com/socketio/socket.io-client-swift", majorVersion: 8)
    ]
)
