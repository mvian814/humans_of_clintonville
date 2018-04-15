class CatsController < ApplicationController

  def index
    @cats = Cat.all
  end

  def new
    @breeds = [
      "ABYSSINIAN",
      "BENGAL",
      "BURMESE",
      "BIRMAN",
      "BRITISH SHORTHAIR",
      "BURMILLA",
      "DEVONREX",
      "DOMESTIC SHORTHAIR",
      "EXOTIC",
      "HIMALAYAN",
      "KORAT",
      "MAINECOON",
      "NORWEGIAN FORESTCAT",
      "ORIENTAL",
      "RAGDOLL",
      "SAVANNAH",
      "SCOTTISHFOLD",
      "SIAMESE",
      "SINGAPURA",
      "SOMALI",
      "SPHINX",
      "TURKISHVAN",
    ]
    @cat = Cat.new
    @humans = Human.all.map {|human| [human.full_name, human.id]}

  end

  def create
    @cat = Cat.new cat_params
    if @cat.save
      redirect_to cats_path
    else
      render 'new'
    end
  end



  private

  def cat_params
    params.require(:cat).permit([:name,:breed, :weight, :age, :human_id])
  end

end
