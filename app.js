const http = require('http');
http.createServer((req, res) => {
    res.end('Hello from Node.js!');
}).listen(3000, () => {
    console.log('Server running on http://localhost:3000');
})