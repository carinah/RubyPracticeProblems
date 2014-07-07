def frame_your_phrase(phrase)
  stars = "*"
  new_phrase = phrase.split.map {|word| "*" + " " + word + (" " * (width-word.length-3)) + stars + "\n"}.join 

  width = phrase.split.max { |word| word.length }.length + 4 
  box_width = stars * width + "\n"

  height = new_phrase.count("\n")
  box_height = ((stars + "\n") * height) + 1
  
  puts box_width + new_phrase + box_width
end 