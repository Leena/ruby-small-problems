# 136. Single Number

def single_number(nums)
  nums.reduce(:^)
end

nums = [2,2,1]
p single_number(nums) == 1

nums = [4,1,2,1,2]
p single_number(nums) == 4

nums = [1]
p single_number(nums) == 1