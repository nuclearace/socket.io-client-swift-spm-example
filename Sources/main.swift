import Foundation
import SocketIO

let socket = SocketIOClient(socketURL: URL(string: "http://localhost:8080/")!, config: [.log(false)])

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
