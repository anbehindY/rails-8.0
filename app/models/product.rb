class Product < ApplicationRecord
  include Notifications

  has_rich_text :description
  has_one_attached :featured_image
  has_many :subscribers, dependent: :destroy

  validates :inventory_count, numericality: { greater_than_or_equal_to: 0 }
  validates :name, presence: true
end
