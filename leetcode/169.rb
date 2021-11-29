# 169. Majority Element

# Boyer-Moore Majority Voting Algorithm
# We assume there is always one majority element

def majority_element(nums)
  candidate = nil
  count = 0

  nums.each do |num|
    candidate = num if count == 0
    candidate == num ? count += 1 : count -= 1
  end

  candidate
end

nums = [3,2,3]
p majority_element(nums) == 3

nums = [2,2,1,1,1,2,2]
p majority_element(nums) == 2

nums = [2,2,1,2]
p majority_element(nums) == 2