class Comment < ApplicationRecord
  #ASSOCIATIONS
  belongs_to :picture, counter_cache: true

end
