http   =   require "http"
util   =   require "util"

module.exports = http.createServer (req, res) ->
  sendResponse = ->
    res .writeHead   200, 'Content-Type': 'text/plain'
    res .end         util.inspect util
    
  setTimeout sendResponse, 100

