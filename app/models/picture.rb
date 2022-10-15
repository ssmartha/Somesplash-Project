class Picture < ApplicationRecord
  #VALIDATIONS
  validates :title, presence: {message: "Title can't be blank"}
  #validates :photo, presence: {message: "Image can't be blank"}

  #ASSOCIATIONS
  has_many :comments, dependent: :destroy
  belongs_to :category, counter_cache: true, optional: true
  has_one_attached :photo

end
