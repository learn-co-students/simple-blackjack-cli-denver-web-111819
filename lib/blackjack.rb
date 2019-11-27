require 'pry'
def welcome
  puts "Welcome to the Blackjack Table"
  # puts "What's your first name?"
  # user_first = gets.chomp
  # puts "Hi, #{user_first}, what's your last name?"
  # user_last = gets.chomp
  # puts "Hi, #{user_first} #{user_last}, nice to meet you."
  # deal_card
end

def deal_card
  rand (1..11)

end

def display_card_total number
  puts "Your cards add up to #{number}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  gets
end

def end_game card_total
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  first_card = deal_card 
  second_card = deal_card 
  current_card_total = first_card + second_card
  puts "Your cards add up to #{current_card_total}"
  current_card_total
end


def hit? number
  prompt_user
  input = get_user_input
  if input == 'h'
    number += deal_card
    display_card_total(number)
  elsif input != 's'
    invalid_command
    hit?(number)

  end 
  number
   

end
# binding.pry
def invalid_command
  puts "Please enter a valid command"
  # code invalid_command here
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  total = hit? (initial_round)
  until total > 21 do
    hit? total
  end
  end_game total
  

  # code runner here
end

