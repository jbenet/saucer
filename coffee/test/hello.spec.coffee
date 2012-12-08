goog.provide 'hello.spec'

goog.require 'hello'

describe 'hello', ->
  it 'should have member World', ->
    expect(hello.World).toBeDefined()

  describe 'hello.World', ->
    it 'should have method greeting', ->
      expect(hello.World.prototype.greeting).toBeDefined()
      expect(typeof hello.World.prototype.greeting).toBe('function')

    it 'should greet us with excitement', ->
      expect(new hello.World().greeting()).toBe('Hello World!')

    it 'should record greetings', ->
      greeter = new hello.World()
      _.each _.range(10), (i) ->
        expect(greeter.count).toBe(i)
        greeter.greeting()
        expect(greeter.count).toBe(i + 1)
