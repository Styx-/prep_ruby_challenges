def counting_game(number_of_players, play_number)
  current_player = 0
  current_direction = 1

  #play through all numbers up to play_number
  (1..play_number).each do |current_number|
    previous_number = current_number - 1

    #switch direction if the previous number was divisible by 7
    (current_direction *= -1) if (previous_number % 7 == 0) && (previous_number != 0)

    #skip a player if the previous number was divisible by 11
    current_player += (1 * current_direction) if (previous_number % 11 == 0) && (previous_number != 0)

    #advance play by a player in a given direction
    current_player += (1 * current_direction)

    #wrap back around if current_player exceeds number of players
    current_player -= number_of_players if current_player > number_of_players

    #wrap back around in other direction
    current_player += number_of_players if current_player < 1
  end
  #return last player
  current_player
end

puts counting_game(10, 100)