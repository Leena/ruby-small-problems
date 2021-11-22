# 349. Intersection of Two Arrays

def intersection(nums1, nums2)
  nums1 & nums2
end

nums1 = [1,2,2,1]
nums2 = [2,2]

p intersection(nums1, nums2) == [2]

nums1 = [4,9,5]
nums2 = [9,4,9,8,4]

p intersection(nums1, nums2)  == [4, 9]