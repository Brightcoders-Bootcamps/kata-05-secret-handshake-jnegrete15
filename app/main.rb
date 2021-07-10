# frozen_string_literal: true

require_relative 'secret_hand_shake_class'

puts 'Welcome to Secret Handshake game'

puts 'Enter a decimal number: '
number = gets.chomp.to_i

secret_hand_shake = SecretHandShake.new(number)
secret_hand_shake.show_result
