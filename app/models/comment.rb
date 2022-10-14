class Comment < ApplicationRecord

  #VALIDATIONS
  validates :content, length: { in: 1..150 }

  #ASSOCIATIONS
  belongs_to :picture, counter_cache: true

end
