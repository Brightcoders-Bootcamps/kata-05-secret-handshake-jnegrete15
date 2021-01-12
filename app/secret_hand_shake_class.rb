# frozen_string_literal: true

require_relative 'hand_shake_encoder_class'

# Global class that calls to HandShakeEncoder class
class SecretHandShake
  def initialize(number)
    @number = number
    @encoder = HandShakeEncoder.new(to_binary(@number))
  end

  def to_binary(number)
    number.to_s(2)
  end

  def show_result
    print "#{@encoder.secret_result}\n"
  end
end
