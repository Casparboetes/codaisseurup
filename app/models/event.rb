class Event < ApplicationRecord
has_and_belongs_to_many :categories
belongs_to :user


validates :name, presence: true, length: { maximum: 50 }
validates :description, presence: true, length: { maximum: 500 }
#validates :location, presence: true
#validates :price, presence: true
#validates :capacity, presence: true
#validates :includes_food, presence: true
#validates :includes_drinks, presence: true
#validates :starts_at, presence: true, datetime:
#validates :ends_at, presence: true, datetime:
#validates :active,

  def bargain?
    price < 30
  end

  def self.order_by_price
    order :price
  end


has_many :photos
end
