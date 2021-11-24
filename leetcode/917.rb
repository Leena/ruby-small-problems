# 917. Reverse Only Letters

def reverse_only_letters(s)
  start_idx = 0 
  end_idx = s.length - 1 
  start_alphabet_found = false
  end_alphabet_found = false

  while start_idx < end_idx
    start_alphabet_found = true if part_of_alphabet?(s[start_idx])
    end_alphabet_found = true if part_of_alphabet?(s[end_idx])
    
    if start_alphabet_found && end_alphabet_found
      s[start_idx], s[end_idx] = s[end_idx], s[start_idx]
      start_alphabet_found = false
      end_alphabet_found = false
    end 

    start_idx += 1 unless start_alphabet_found
    end_idx -= 1 unless end_alphabet_found
  end

  s
end

def part_of_alphabet?(char)
  ('a'..'z').include?(char) || ('A'..'Z').include?(char)
end

s = "ab-cd"
p reverse_only_letters(s) ==  "dc-ba"

s = "a-bC-dEf-ghIj"
p reverse_only_letters(s) ==  "j-Ih-gfE-dCba"

s = "Test1ng-Leet=code-Q!"
p reverse_only_letters(s) ==  "Qedo1ct-eeLg=ntse-T!"