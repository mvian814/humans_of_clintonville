class HumansController < ApplicationController


def index
  @humans = Human.all
  @dogs = Dog.all
end





end
