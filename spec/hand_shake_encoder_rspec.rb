# frozen_string_literal: true

require_relative '../app/hand_shake_encoder_class'
require 'rspec'
RSpec.describe HandShakeEncoder do
  describe '.initialize' do
    it 'returns ["double wink","wink"]' do
      encoder = HandShakeEncoder.new(19.to_s(2))
      expect(encoder.secret_result).to eq ['double wink', 'wink']
    end
  end
  describe '.wink' do
    it 'returns ["wink"] when the last position of the binary number is 1' do
      wink = HandShakeEncoder.new(1.to_s(2))
      expect(wink.secret_result).to eq ['wink']
    end
  end
  describe '.double_wink' do
    it 'returns ["double wink"] when we give it number 2 as input' do
      double_wink = HandShakeEncoder.new("10")
      expect(double_wink.secret_result).to eq ['double wink']
    end
  end
  describe '.close your eyes' do
    it 'returns ["close your eyes"] when the input is 4 for ejample.' do
      close_eyes = HandShakeEncoder.new(4.to_s(2))
      expect(close_eyes.secret_result).to eq ['close your eyes']
    end
  end
  describe '.jump' do
    it 'returns ["jump"]' do
      jump = HandShakeEncoder.new(8.to_s(2))
      expect(jump.secret_result).to eq ['jump']
    end
  end
  describe '.reverse' do
    it 'returns the array in a reverse way' do
      encoder = HandShakeEncoder.new(31.to_s(2))
      expect(encoder.secret_result).to eq ['jump', 'close your eyes', 'double wink', 'wink']
    end
  end
end
