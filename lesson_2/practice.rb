def win_count(result)
  comp_count = 0
  player_count = 0
  loop do
    if result == "You won!"
      player_count += 1
    else
      comp_count =+ 1
    end
  if comp_count == 3 || player_count == 3
  break
  end
end
