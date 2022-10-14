class Picture < ApplicationRecord
  #ASSOCIATIONS
  has_many :comments, dependent: :destroy
  belongs_to :category, counter_cache: true, optional: true

end