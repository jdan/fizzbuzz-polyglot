const app = require('express')()

app.get('/:name', (req, res) => {
  res.contentType('text/html')
  res.end(`Hello, ${req.params.name}!`)
})

app.listen(80, () => console.log('Server listening on port 80'))
