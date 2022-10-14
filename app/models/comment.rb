class Comment < ApplicationRecord
  #Validations
  validates :content, length: { in: 1..150 }

  belongs_to :picture
end
