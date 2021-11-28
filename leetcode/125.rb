# 125. Valid Palindrome

def is_palindrome(s)
 formatted_string = s.downcase.gsub(/[^[:alnum:]]/, "")
 formatted_string == formatted_string.reverse
end

s = "A man, a plan, a canal: Panama"
p is_palindrome(s) == true

s = "race a car"
p is_palindrome(s) == false

s = " "
p is_palindrome(s) == true