# 82. Remove Duplicates from Sorted List II

class ListNode
  attr_accessor :val, :next
  def initialize(val = 0, _next = nil)
    @val = val
    @next = _next
  end
end

def delete_duplicates(head)
dummy = ListNode.new(0, head)
prev = dummy

while head != nil
  if head.next != nil && head.val == head.next.val
    while head.next != nil && head.val == head.next.val
      head = head.next
    end
    prev.next = head.next 
  else 
    prev = prev.next 
  end
  head = head.next 
end

dummy.next
end

test_one = [1,2,3,3,4,4,5]
delete_duplicates(head) == [1, 2, 5]

test_two = [1,1,1,2,3]
delete_duplicates(head) == [2,3]