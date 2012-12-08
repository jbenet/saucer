goog.provide 'main.spec'

goog.require 'main'

describe 'main', ->
  it 'should have a greeter', ->
    expect(main.greeter).toBeDefined()

  describe 'main.greeter', ->
    it 'should have greeted once', ->
      expect(main.greeter.count).toBe(1)
