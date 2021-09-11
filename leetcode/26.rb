# 26. Remove Duplicates from Sorted Array

def remove_duplicates(nums)
  return nums if nums.size == 1 || nums.size == 0

  index = 0
  (1...nums.size).each do |i| 
      if (nums[i-1] != nums[i])
          index +=1
          nums[index] = nums[i]
      end
  end
  return index + 1
end

p remove_duplicates([1,1,2]) == 2
p remove_duplicates([1,1,2,3,3]) == 3
p remove_duplicates([0,0,1,1,1,2,2,3,3,4]) == 5