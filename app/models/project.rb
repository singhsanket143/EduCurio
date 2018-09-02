class Project < ApplicationRecord
  has_many :tasks
  validates :name, presence: true, length: {maximum: 50}
  validates :content, presence: true, length: {maximum: 5000}
  validates :price, presence: true, numericality: {only_integer: true}

  mount_uploader :image, ProjectImageUploader

end
