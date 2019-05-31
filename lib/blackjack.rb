def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
   random_number = rand(1..11)
   return random_number
end

def display_card_total(card_total)
puts "Your cards add up to #{card_total}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
    user_input = gets.chomp
end

def end_game(card_total)
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  first_round_total = deal_card + deal_card
    display_card_total(first_round_total)
    return first_round_total
 end

def hit?(card_total)
  prompt_user #puts "Type 'h' to hit or 's' to stay"
user_input = get_user_input
  if user_input == "h"
      deal_card
  elsif user_input == "s"
    card_total
  else
    invalid_command
  # code hit? here
end
end
def invalid_command
  puts "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  puts welcome
  card_total = initial_round
  until card_total > 21
    hit?(card_total)
    display_card_total(card_total)
  end
end_game(card_total)

end
