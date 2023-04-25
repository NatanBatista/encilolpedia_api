class Champion < ApplicationRecord
    validates :name, presence: true
end
