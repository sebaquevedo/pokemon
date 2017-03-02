class Pokemon < ApplicationRecord
	has_many :caughts
	has_many :users, through: :caughts
end
