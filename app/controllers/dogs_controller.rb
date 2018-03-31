class DogsController < ApplicationController


def index
  @dogs = Dog.all



  # @dogs = Dog.where(human_id: @human.id)

end





end
