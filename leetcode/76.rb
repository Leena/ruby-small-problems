# 76. Minimum Window Substring

def min_window(s, t)
  target_chars = hash_char_count(t)
    
  missing = t.length
  left, right = 0, 0
  window_length = s.length + 1 
  window = ''

  while right < s.length
    if target_chars.key?(s[right])
      missing -= 1 if target_chars[s[right]] > 0
      target_chars[s[right]] -= 1
    end

    right += 1

    while missing.zero?
      if target_chars.key?(s[left])
        missing += 1 if target_chars[s[left]] >= 0
        target_chars[s[left]] += 1
      end

      if right - left < window_length
        window = s[left...right]
        window_length = window.length
      end
      left += 1
    end
  end
  window
end

def hash_char_count(string)
  string.chars.each_with_object(Hash.new(0)) do |char, count|
    count[char] += 1
  end
end

s = "ADOBECODEBANC"
t = "ABC"
p min_window(s, t) == "BANC"

s = "a"
t = "a"
p min_window(s, t) == "a"

s = "a"
t = "aa"
p min_window(s, t) == ""