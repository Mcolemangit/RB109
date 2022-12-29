def real_palindrome?(strng)
  strng.downcase.delete('^a-z0-9') == strng.downcase.reverse.delete('^a-z0-9')
end


p real_palindrome?("Madam, I'm Adam")
