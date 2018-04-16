class HumansController < ApplicationController

  def index
    @humans = Human.all
    @dogs = Dog.all
  end

  def new
    @human = Human.new
  end

  def create
    @human = Human.new(human_params)
    if @human.save
      redirect_to humans_path
    else
      render 'new'
    end
  end

  private

  def human_params
    params.require(:human).permit([:birth_year, :first_name, :last_name, :address_numbers, :street_name])
  end

end
