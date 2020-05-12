class Pro < ApplicationRecord
    has_many :pro_clubs
    has_many :clubs, through: :pro_clubs
    validates :first_name, presence: true
    validates :last_name, presence: true
    validates :hometown, presence: true
    validates :home_state, presence: true
    validates :age, presence: true
end
