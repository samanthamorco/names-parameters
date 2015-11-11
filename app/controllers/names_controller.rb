class NamesController < ApplicationController

  def parameters
    @name = params[:name].upcase
    @first_letter = @name.chars.first

    if @first_letter == "A"
      @string = "Hey, your name starts with the first letter of the alphabet!"
    else
      @string = "Your name does not start with the first letter of the alphabet. Not so cool."
    end

    @number = params[:number]

    if @number.to_i == 36
      @solution = "You guessed the right number! Congrats!"
    else
      @solution = "You did not guess the right number. Try again!"
    end
  end

  def bonus
    @random = RandomNumber.all

    @guess = params[:number]
    if @guess.to_i == @random.first.to_i
      @message = "Congratulations! You guessed the right number!"
  end


end
