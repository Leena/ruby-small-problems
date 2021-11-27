# 242. Valid Anagram

# def is_anagram(s, t)
#   s.chars.sort == t.chars.sort
# end

def is_anagram(s, t)
  hash = Hash.new(0)

  s.chars.each { |letter| hash[letter] += 1}
  
  t.chars.each do |letter|
    hash[letter]? hash[letter] -= 1 : (return false)
  end

  hash.all? { |k, v| v == 0}
end

s = "anagram"
t = "nagaram"
p is_anagram(s, t) == true

s = "rat"
t = "car"
p is_anagram(s, t) == false