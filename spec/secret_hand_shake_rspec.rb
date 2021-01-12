# frozen_string_literal: true

require_relative '../app/secret_hand_shake_class'
require_relative '../app/hand_shake_encoder_class'
require 'rspec'

RSpec.describe SecretHandShake do
  describe '.to binary' do
    it 'given a decimal number returns the binary form' do
      hand_shake = SecretHandShake.new(19)
      expect(hand_shake.to_binary(41)).to eq '101001'
    end
  end

  describe '.show result' do
    it 'shows the result of process' do
      hand_shake = SecretHandShake.new(15)
      expect(hand_shake.show_result) == ['wink', 'double wink', 'close your eyes', 'jump']
    end
  end
end
