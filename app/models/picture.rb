class Picture < ApplicationRecord
  #Validations
  validates :title, presence: {message: "Title can't be blank"}
  validates :photo, presence: {message: "Image can't be blank"}

  belongs_to :category
end
