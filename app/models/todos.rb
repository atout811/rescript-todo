class Todos < ApplicationRecord
    validates :title, presence: true
   
end