goog.provide 'main'

goog.require 'hello'

$(document).ready ->
  main.greeter = new hello.World()
  console.log main.greeter.greeting()

# make sure to export the modules you want to expose,
# otherwise they won't be accessible by clients.
(exports ? this).main = main
