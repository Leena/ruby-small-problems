# 82. Remove Duplicates from Sorted List II

class ListNode
  attr_accessor :val, :next
  def initialize(val = 0, _next = nil)
    @val = val
    @next = _next
  end
end

def delete_duplicates(head)

end

head = [1,2,3,3,4,4,5]
p delete_duplicates(head) == [1, 2, 5]

head = [1,1,1,2,3]
p delete_duplicates(head) == [2,3]