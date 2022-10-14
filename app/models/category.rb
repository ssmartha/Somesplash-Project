class Category < ApplicationRecord
    #Validations
    validates :name, presence: {message: "Name can't be blank"}
    validates :cover, presence: {message: "Cover can't be blank"}
end
