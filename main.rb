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
