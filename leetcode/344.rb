# 344. Reverse String

def reverse_string(s)
  start_index = 0
  end_index = s.length-1
  
  while start_index < end_index
     s[start_index], s[end_index] = s[end_index], s[start_index]
      start_index += 1
      end_index -= 1
  end
  s
end

s = ["h","e","l","l","o"]
p reverse_string(s) == ["o","l","l","e","h"]

s = ["H","a","n","n","a","h"]
p reverse_string(s) == ["h","a","n","n","a","H"]