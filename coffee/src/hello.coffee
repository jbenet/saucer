goog.provide 'hello'

class hello.World
  count: 0
  greeting: =>
    @count++
    'Hello World!'
