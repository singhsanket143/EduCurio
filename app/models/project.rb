class Project < ApplicationRecord
  extend FriendlyId
  friendly_id :name, use: [:slugged, :finders]
  has_many :tasks
  validates :name, presence: true, length: {maximum: 50}
  validates :content, presence: true, length: {maximum: 5000}
  validates :price, presence: true, numericality: {only_integer: true}

  mount_uploader :image, ProjectImageUploader

  def shortname
    name.length > 25 ? name[0..25] + "..." : name
  end

end
