require 'prime'

#task 1
def max_pair(arr)
  arr = arr.map{|x| x.abs}.sort[-2..-1]
  arr[-1]*arr[-2]
end

#task 2
def mult_complex(a,b,c,d)
  [a*c-b*d, a*d+b*c]
end

#task3
def array_prime(n)
  Prime.take(n)
end

#task4
def basket(x,y)
  if x < 0 || x > 28 || y < 0 || y > 15
    return nil
  end
  if Math.sqrt((0-x)**2+(7.5-y)**2)>=6.75
    3
    else
    2
  end
end

print(max_pair([-6,-5,3,4]))
print(mult_complex(1,2,3,4))
print(array_prime(10))
print(basket(15, 7))

require 'test/unit'

class Tests < Test::Unit::TestCase
  def TestFirst
    assert_equal max_pair([-6,-5,3,4]), 30
    assert_equal max_pair([1,2,3,4]), 12
    assert_equal max_pair([-6,-5,3,-7]), 42
  end
  def TestSecond
    assert_equal mult_complex(1,2,3,4), [-5, 10]
    assert_equal mult_complex(-1,2,5,4), [-13, 6]
    assert_equal mult_complex(10,2,3,5), [20, 56]
  end
  def TestThird
    assert_equal array_prime(1), [2]
    assert_equal array_prime(2), [2,3]
    assert_equal array_prime(3), [2,3,5]
  end
  def TestFourth
    assert_equal basket(15,7), 3
    assert_equal basket(0.25, 1), 2
    assert_equal basket(30,30), nil
  end
end
