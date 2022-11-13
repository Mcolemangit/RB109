def reverse_sentence(string)
   string.split.reverse.join(" ")

end

p reverse_sentence('hey kids') == 'kids hey'