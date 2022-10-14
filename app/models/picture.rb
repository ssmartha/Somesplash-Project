class Picture < ApplicationRecord
  has_many :comments, dependent: :nullify
  belongs_to :category, counter_cache: true, optional: true

end
