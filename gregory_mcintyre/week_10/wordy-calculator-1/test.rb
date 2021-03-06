require_relative './wordy'
require 'minitest/autorun'
require 'minitest/pride'

class CalculatorTest < MiniTest::Test
  def setup
    @calculator = Calculator.new
  end

  def test_add_1
    assert_equal 2, @calculator.ask('What is 1 plus 1?')
  end

  def test_add_2
    assert_equal 3, @calculator.ask('What is 1 plus 2?')
  end

  def test_add_more_digits
    assert_equal 45801, @calculator.ask('What is 123 plus 45678?')
  end

  def test_add_negative_numbers
    assert_equal -11, @calculator.ask('What is -1 plus -10?')
  end

  def test_non_matching_question
    assert_equal nil, @calculator.ask('Wut is -1 plus -10?')
  end

  def test_missing_number
    assert_equal nil, @calculator.ask('What is 10 plus ')
  end

  def test_malformed_number
    assert_equal nil, @calculator.ask('What is 10 plus 5-2-3?')
  end

  def test_very_large_number
    assert_equal 29389283928339, @calculator.ask('What is 10 plus 29389283928329?')
  end
end
