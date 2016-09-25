import Foundation

let queue = DispatchQueue(label: "readQueue")

func readAysnc() {
    queue.async {
        guard let input = readLine(strippingNewline: true) else { return readAysnc() }

        if input == "quit" {
            exit(0)
        }

        socket.emit("message", input)
        readAysnc()
    }
}
