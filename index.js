const app = require('http').createServer((req, res) => {
	res.writeHead(500)
	res.end("failed")
});
const server = app.listen(8080);
const io = require('socket.io')(server);

const sockets = {};

io.on('connection', (socket) => {
	sockets[socket.id] = socket;

	socket.on('message', (message) => {
		console.log(`got ${message}`);
	});

	socket.on('disconnect', () => {
        delete sockets[socket.id];
	});
});

process.stdin.on('data', (buf) => {
	for (id in sockets) {
        sockets[id].emit('message', String(buf));
	}
});
