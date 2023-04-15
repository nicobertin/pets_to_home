class Kindergarten < ApplicationRecord
  belongs_to :city
  belongs_to :user
  has_and_belongs_to_many :pets
  has_one_attached :image

  validates :name, presence: true
  validates :description, presence: true
  validates :price, presence: true
  validates :phone, presence: true
  validates :city_id, presence: true
  validates :image, presence: true

  paginates_per 10

  def self.ransackable_attributes(auth_object = nil)
    ["city_id", "created_at", "description", "id", "name", "phone", "price", "updated_at", "user_id"]
  end
end
