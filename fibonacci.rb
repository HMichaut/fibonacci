# Importing the unit test library
require "test/unit/assertions"
include Test::Unit::Assertions

def fibs(num)
  result_array = []
  (num + 1).times do
    if result_array.length == 0
      result_array.push(0)
    elsif result_array.length <= 1
      result_array.push(1)
    else
      result_array.push(result_array[-2] + result_array[-1])
    end
  end
  return result_array
end


def fibs_rec(num, a = 0, b = 1)
  return [a] if num.zero?
  [a] + fibs_rec(num - 1, b, a + b)
end

assert_equal fibs_rec(0), [0]
assert_equal fibs_rec(2), [0, 1, 1]
assert_equal fibs_rec(5), [0, 1, 1, 2, 3, 5]
assert_equal fibs_rec(7), [0, 1, 1, 2, 3, 5, 8, 13]
assert_equal fibs(0), [0]
assert_equal fibs(2), [0, 1, 1]
assert_equal fibs(5), [0, 1, 1, 2, 3, 5]
assert_equal fibs(7), [0, 1, 1, 2, 3, 5, 8, 13]
