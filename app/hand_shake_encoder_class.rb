# frozen_string_literal: true

# Class to make the secret array, it needs a binary number as input
class HandShakeEncoder
  attr_reader :secret_result

  def initialize(number_key)
    @secret_result = []
    @number_key = number_key

    encoder
  end

  def encoder
    wink
    double_wink
    close_your_eyes
    jump
    reverse
  end

  def wink
    @secret_result << 'wink' if @number_key[-1] == '1'
  end

  def double_wink
    @secret_result << 'double wink' if @number_key[-2] == '1'
  end

  def close_your_eyes
    @secret_result << 'close your eyes' if @number_key[-3] == '1'
  end

  def jump
    @secret_result << 'jump' if @number_key[-4] == '1'
  end

  def reverse
    @secret_result = @secret_result.reverse if @number_key[-5] == '1'
  end
end
