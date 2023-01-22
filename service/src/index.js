const express = require('express')
const bp = require('body-parser')

const app = express()
const port = 3000

app.use(bp.json())
app.use(bp.urlencoded({ extended: true }))

app.post('/checkin', (req, res) => {
    // console.log("received", req)
    console.log("body", req.body)
    res.send({ok: true})
})

app.listen(port, () => {
  console.log(`Example app listening on port ${port}`)
})