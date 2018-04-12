require 'httparty'

class DogsController < ApplicationController

  def index
    @dogs = Dog.all
  end

  def new
    @breeds = get_breeds
    @dog = Dog.new
    @humans = Human.all.map { |human| [ human.full_name, human.id] }
  end

  def create
    @dog = Dog.new dog_params
    if @dog.save
      redirect_to dogs_path
    else
      render 'new'
    end

  end

  private

  def get_breeds
    address = "https://dog.ceo/api/breeds/list/all"
    json = JSON.parse(HTTParty.get(address).body)
    result = []
    json["message"].each { |key, value|
      if value.blank?
        result << key
      else
        value.each { |name|
          result << "#{key} - #{name}"
        }
      end
    }
    result
  end

  def dog_params
    params.require(:dog).permit([:name,:breed, :weight, :age, :human_id])
  end






end
