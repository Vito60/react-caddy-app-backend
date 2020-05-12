class Club < ApplicationRecord
    has_many :pro_clubs
    has_many :pros, through: :pro_clubs 
    validates :club_type, presence: true
    validates :brand, presence: true
    validates :model, presence: true
    validates :loft, presence: true
end
