class HumansController < ApplicationController


  def index
    @humans = Human.all
    @dogs = Dog.all
  end

  def new
    @human = Human.new
  end

  def create
    @human = Human.create(human_params)
    if @human.save
      redirect_to humans_path
    else
      render 'new'
    end
  end




  private

  def human_params
    params.require(:human).permit([:full_name, :address,:age])

  end



end
