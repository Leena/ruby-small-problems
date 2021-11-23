# 412. Fizz Buzz

def fizz_buzz(n)
    res = []
    (1..n).each do |number|
      if number % 3 == 0 && number % 5 == 0
        res << 'FizzBuzz'
      elsif number % 3 == 0 
        res << 'Fizz'
      elsif number % 5 == 0 
        res << 'Buzz'
      else 
        res << number.to_s 
      end
    end
    res
end

n = 3
p fizz_buzz(n) == ["1","2","Fizz"]

n = 5
p fizz_buzz(n) == ["1","2","Fizz","4","Buzz"]

n = 15
p fizz_buzz(n) == ["1","2","Fizz","4","Buzz","Fizz","7","8","Fizz","Buzz","11","Fizz","13","14","FizzBuzz"]