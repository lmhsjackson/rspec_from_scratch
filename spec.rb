def describe(description, &block)
  ExampleGroup.new(block).evaluate!
end

def expect(subject)
   @subject = Subject.new(subject)
end

class Subject
  attr_reader :subject
  def initialize(subject)
    @subject = subject
  end

  def to(expectation)
    expectation
  end
end

def eq(expectation)
  raise AssertionError unless @subject.subject == expectation
end

class AssertionError < Exception

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

