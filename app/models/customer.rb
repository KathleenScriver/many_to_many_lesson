class Customer < ActiveRecord::Base
  has_many :reviews
  has_many :restaurants, through: :reviews

  def restaurant_names
    restaurants.pluck(:name)
  end
end
