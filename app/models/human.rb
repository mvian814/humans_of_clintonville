class Human < ApplicationRecord
  has_many :dogs

  def full_name
    "#{first_name} #{last_name}"
  end

  def address
    "#{address_numbers} #{street_name}"
  end

  def age
    "#{Date.today.year - birth_year}"
  end








end
