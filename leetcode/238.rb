# 238. Product of Array Except Self

def product_except_self(nums)
  results = [1]

  (0..(nums.size - 2)).each do |idx|
    results << nums[idx] * results[idx]
  end
  
  product = 1

  (nums.size - 1).downto(1).each do |idx|
    results[idx - 1] *= (product * nums[idx])
    product *= nums[idx]
  end
  
  results
end

nums = [1,2,3,4]
p product_except_self(nums) == [24,12,8,6]

nums = [-1,1,0,-3,3]
p product_except_self(nums) == [0,0,9,0,0]