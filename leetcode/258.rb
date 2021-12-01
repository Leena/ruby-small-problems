# 258. Add Digits

def add_digits(num)
  while num > 9
    num = num.digits.sum
  end
  num
end

num = 38
p add_digits(num) == 2

num = 0
p add_digits(num) == 0