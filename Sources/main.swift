import Foundation
import SocketIO

let manager = SocketManager(socketURL: URL(string: "http://localhost:8080")!, config: [.log(true), .compress])
let socket = manager.defaultSocket

socket.on("connect") {data, ack in
    print("socket connected")
    print("Type \"quit\" to stop")
}

socket.on("message") {data, ack in
    print(data[0] as! String)
}

socket.connect()
readAysnc()

CFRunLoopRun()
