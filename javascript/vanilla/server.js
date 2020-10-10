#!/usr/bin/env node

const http = require('http')
const { URL } = require('url')

http
  .createServer((req, res) => {
    const url = new URL(req.url, 'http://localhost')
    const name = url.pathname.slice(1)
    res.writeHead(200, { 'Content-Type': 'text/html' })
    res.end(`Hello, ${name}!`)
  })
  .listen(80, () => console.log('Server listening on port 80'))
