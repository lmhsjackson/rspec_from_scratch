require 'test/unit'
require './spec.rb'

class TestDescribe < Test::Unit::TestCase
  def test_that_it_can_pass
    describe 'some thing' do
      it 'Has some property' do
      end
    end
  end

  def test_that_it_can_fail
    assert_raise(StandardError) do
      describe 'some failing thing' do
        it 'fails' do
          raise StandardError
        end

      end
    end
  end
end

class TestAssertion < Test::Unit::TestCase
  def test_that_it_can_pass
    expect(2).to eq(2)
  end

  def test_that_it_can_fail
    expect(2).to eq(3)
  end
end
