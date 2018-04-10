def describe(description, &block)
  ExampleGroup.new(block).evaluate!
end

def expect(subject)
end

def eq(expectation)
end

class ExampleGroup
  def initialize(block)
    @block = block
  end

  def evaluate!
    instance_eval(&@block)
  end

  def it(description, &block)
    block.call
  end
end

